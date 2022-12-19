# How to start a project with this template?

## Requirements

- [`make`](https://www.gnu.org/software/make/#download)
- [`poetry`](https://python-poetry.org/docs/#installation)

### Optional requirements

- [`gitmoji-cli`](https://github.com/carloscuesta/gitmoji-cli) (_Recommended_)

## Start project

```zsh
# Use '_' instead of '-'
make name=py_template init
```

## Project structure

Once run `make name=my_project init` command, the project will be structured as follows:

```plain-text
my_project
├── my_project
│   └── __init__.py
├── tests
│   └── test_example.py
├── typings
│   └── my_project
│       └── __init__.pyi
├── .gitignore
├── .pre-commit-config.yaml
├── Makefile
├── README.md
├── mypy.ini
├── poetry.lock
└── pyproject.toml
```

Inside the root folder `my_project`, we find a subfolder also called `my_project` which contains the main logic of the project.
Consequently, the subfolder `tests` have tests to check that logic, and the subfolder `typings`, which is always optional, contains the stub files of the logic while mirroring the subfolder `my_project`.

Lastly, the `README.md` file is changed with the name of the project, as well as the `.pre-commit-config.yaml` is defined. The `poetry.lock` and `pyproject.toml` are initialized with the basic requirements of the project listed in the [test, list and format tools](https://github.com/AINTELLECT/py-template#test-lint-and-format-tools) section.

## Test, lint, and format tools

- [`absolufy-import`](https://github.com/MarcoGorelli/absolufy-imports)
- [`isort`](https://github.com/pycqa/isort)
- [`black`](https://github.com/psf/black) and [`blacken-docs`](https://github.com/asottile/blacken-docs)
- [`pre-commit-hooks`](https://github.com/pre-commit/pre-commit-hooks)
  - `check-ast`
  - `check-merge-conflict`
  - `check-symlinks`
  - `end-of-file-fixer`
  - `trailing-whitespace`
  - `check-json`
  - `check-toml`
  - `check-yaml`
  - `check-xml`
  - `detect-aws-credentials`
  - `detect-private-key`
  - `check-added-large-files`
- [`flake8`](https://gitlab.com/PyCQA/flake8)
  - [`wemake-python-styleguide`](https://wemake-python-styleguide.readthedocs.io/)
  - `flake8-pyi`
- [`pyright`](https://github.com/microsoft/pyright)
- [`mypy`](https://mypy.readthedocs.io/en/stable/) and [`stubtest`](https://mypy.readthedocs.io/en/stable/stubtest.html)
- [`pytest`](https://docs.pytest.org/en/7.2.x/) with [`doctest`](https://docs.python.org/3/library/doctest.html)

---

_[contact@aintellect.org](mailto:contact@aintellect.org)_
