# How to start a project with this template?

## Requirements

- [`make`](https://www.gnu.org/software/make/#download)
- [`poetry`](https://python-poetry.org/docs/#installation)
### Optional requirements
- [`gitmoji-cli`](https://github.com/carloscuesta/gitmoji-cli) (_Recommended_)


## Start project:

```zsh
# Use '_' instead of '-'
make name=py_template init
```

## Project structure

Once run `make name=my_project init` command, the project will be structured 
as follows:

```
my_project
├── my_project
│   └── __init__.py
├── tests
│   └── test_example.py
├── typings
│   └── my_project
│       └── __init__.pyi
├── Makefile
├── README.md
├── mypy.ini
├── poetry.lock
└── pyproject.toml
```

## Test, lint and format tools

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