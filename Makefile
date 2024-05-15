install:
	poetry install

test:
	poetry run pytest

test-coverage:
	poetry run pytest --cov=async_network_live --cov-report xml

lint:
	poetry run flake8 async_network_live

format:
	poetry run black async_network_live

isort:
	poetry run isort async_network_live

selfcheck:
	poetry check

check: selfcheck lint

build: check
	poetry build

.PHONY: install test lint selfcheck check build format