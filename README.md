# elm-review-config

This is the `elm-review` config we use at Paack! The package must be installed in order to get `elm-lint-action` working.

## Setting up

First install `elm-review` in the project
```
$ yarn add --dev elm-review
```
then run
```
$ npx elm-review init
```
once `review/` is created 
```
$ cd review
$ elm install PaackEng/elm-review-config
```
