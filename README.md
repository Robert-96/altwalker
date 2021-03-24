# altwalker-action

This action installs AltWalker.

It also installs the latest version of GraphWalker.

## Usage

```yml
on: [push]

jobs:
  altwalker-action:

    runs-on: ubuntu-latest
    name: A example job for altwalker-action@v1

    steps:
    - uses: actions/checkout@v2
    - name: Set up Python ${{ matrix.python-version }}
      uses: actions/setup-python@v2
      with:
        python-version: '3.9'
    - name: Set up JDK 11
      uses: actions/setup-java@v1
      with:
        java-version: 11
    - uses: Robert-96/altwalker-action@v1.1.0
    - run: gw --version
      shell: bash
    - run: altwalker --version
      shell: bash
```

## License

This project is licensed under the [GNU General Public License v3.0](https://github.com/Robert-96/altwalker-action/blob/main/LICENSE).