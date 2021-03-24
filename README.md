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
    - name: Setup AltWalker
      uses: Robert-96/altwalker-action@v1
    - run: gw --version
      shell: bash
    - run: altwalker --version
      shell: bash

```

## License

This project is licensed under the [GNU General Public License v3.0](https://github.com/Robert-96/altwalker-action/blob/main/LICENSE).