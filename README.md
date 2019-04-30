# Utility Token Contracts

Utility token Contracts is a collection of smart contracts that enable developers to
create utility token.

## Getting Started

These instructions will get you a copy of the project up and running on your
local machine for development and testing purposes.

### Prerequisites

Project requires [node](https://nodejs.org/en/) and
[npm](https://www.npmjs.com/get-npm) to be installed on dev machine.

### Cloning

In case of fresh clone, use `--recursive-submodules` option while cloning:

```bash
git clone --recursive-submodules https://github.com/OpenST/utilitytoken-contracts.git
```

To update git submodules for already cloned repos, run:

```bash
git submodule update --init --recursive
```

### Installing

Install npm packages, by running:

```bash
npm install
```

## Compiling the contracts

The following npm script compiles updated contracts from the last call:

```bash
npm run compile
```

To compile all contracts, run:

```bash
npm run compile-all
```

## Running the tests

Before running the tests run `ganache-cli` by:

```bash
npm run ganache
```

Run tests by calling:

```bash
npm run test
```

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available,
see the [tags on this repository](https://github.com/openst/utilitytoken-contracts/tags).

## Developer Guidelines
Learn about OpenST [developer guidelines](https://github.com/OpenST/developer-guidelines). 

## Authors

See also the list of [contributors](https://github.com/OpenST/utilitytoken-contracts/graphs/contributors)
who participated in this project.
