check: # Dependencies
	@echo "🔍 Checking 'poetry' installation..."
	@type poetry >/dev/null 2>&1 ||\
		(echo "⚠️ ERROR: No 'poetry' found in PATH."; exit 1;)
	@echo "✅ Poetry installed"

create: check
	@poetry init --name=$(name) --python=">=3.11"
	@poetry add -G dev "pre-commit>=2.20.0" "pytest>=7.2.0" "pyright^1.1.278" "flake8^5.0.4" "mypy^0.982"
	@echo '\n[tool.pyright]\
	\ninclude = ["$(name)", "tests"]\
	\nreportMissingImports = true\
	\nreportMissingTypeStubs = true' >> pyproject.toml
	@mkdir $(name) && touch $(name)/__init__.py
	@mkdir -p typings/$(name) && touch typings/$(name)/__init__.pyi
	@mkdir tests && \
	echo 'def test_example():\
	\n    """Always True."""\
	\n    assert 1 == 1' > tests/test_example.py
	@echo "# $(name)" > README.md
	@sed -r 's/PACKAGE_NAME/$(name)/'\
		.pre-commit-config.yaml.template > .pre-commit-config.yaml
	@rm .pre-commit-config.yaml.template

setup: check
	@echo "🚧 Setting up the project environment..."
	@gitmoji -i >/dev/null 2>&1 ||\
		(echo "⚠️ WARNING: No 'gitmoji' found in PATH.";\
		echo "\tConsider install it: https://gitmoji.dev")
	@poetry install
	@poetry run pre-commit install
	@poetry run pre-commit install --hook-type pre-push

activate: check
	@poetry shell

start: check setup activate

# make NAME="py_template" init
init: create start

update: check # update
	@echo "🚧 Updating environment..."
	@poetry install
	@echo "✅ Done"

clean: check #Reset project dependencies
	@echo "💔 Uninstallin pre-commit hooks..."; \
		pre-commit uninstall --hook-type pre-push; \
		pre-commit uninstall
	@echo "🔥 Reseting poetry environment..."; \
		poetry env remove --all
	@echo "✅ Done"
	@echo "[WARNING]: Close this session and open a new one 🙏"
