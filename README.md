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

---

_[contact@aintellect.org](mailto:contact@aintellect.org)_