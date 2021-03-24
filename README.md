# altwalker-action

Set up [AltWalker](https://altom.gitlab.io/altwalker/altwalker/) and add the [GraphWalker](https://graphwalker.github.io/) command-line tools.

AltWalker is an open source Model-Based Testing framework that supports running tests written in Python3 and .NET/C#. You design your tests as a directed graph and AltWalker generates test cases from your graph (using GraphWalker) and executes them.

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