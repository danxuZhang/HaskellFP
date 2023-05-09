# Haskell

Learning Haskell from [UPenn CS194](https://www.seas.upenn.edu/~cis1940/spring13/).

## Setup Haskell Development

Set up Haskell using [Stack](https://haskellstack.org/) to get GHC installed and to build your projects.

``` bash
# install stack using script
$ curl -sSL https://get.haskellstack.org/ | sh
```

Upgrade stack after installation:

``` bash
# upgrade stack to the latest version
$ stack upgrade
```

Quick Start: 

``` bash
# Create a new project
$ stack new my-project
# Enter project directory
$ cd my-project
# Build project 
stack build
# Execute built binary
stack exec my-project-exe
```
