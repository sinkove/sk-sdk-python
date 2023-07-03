# Sinkove Python Library

This repository contains Sinkove's Python client.

## Installing the project 

#### Requirements
- **python** >= 3.10
- **make** >= 4.3

1. Clone this repository.
2. Go to the project folder and run the following command to create a new virtual environment.
	```bash
	python -m venv .venv
	```
3. Activate your new virtual environment.
	```bash
	source ./venv/bin/activate
	```
4. Configure your environmet using make.
	```bash
	make setup 
	```

## Tests

### Running tests on your system

#### Dependencies

- **make** >= 4.3
- **python** == 3.10

```bash
make setup
make test
```

### Running test on docker

- **make** >= 4.3
- **docker** >= 20.10.17

```bash
pip install dagger-io
make dagger-test
```

## Releases

We use `bumpversion` for version management. `bumpversion` is a tool that
creates a new git tag for the current release and changes the code to
replace the version where it's necessary. After merging all the changes
into the branch main, to release a new version, follow these steps:

1. Update the branch main locally.
    ```bash
    git checkout main
    git pull origin main
    ```
2. Activate your previously configured virtual environment.
    ```bash
    source .venv/bin/activate
    ```
3. Run `bumpversion` according to the **semantic version** pattern. You
	have the options `major`, `minor` and `patch`.
    ```bash
    bumpversion minor
    ```
4. Push the generated tag to the remote.
    ```bash
    git push origin main --tags
    ```
5. The CI/CD pipeline is configured to deploy a new package everytime a
new tag is pushed. You can check the pipeline progress on the Github Actions UI.
