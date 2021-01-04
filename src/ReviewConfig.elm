module ReviewConfig exposing (config)

{-| This package carries the configuration rules used for elm-review by Paack!


# Definition

@docs config

-}

import NoBooleanCase
import NoDebug.Log
import NoDebug.TodoOrToString
import NoExposingEverything
import NoMissingTypeAnnotation
import NoRedundantConcat
import NoRedundantCons
import NoUnused.CustomTypeConstructors
import NoUnused.Dependencies
import NoUnused.Exports
import NoUnused.Parameters
import NoUnused.Patterns
import NoUnused.Variables
import Review.Rule
    exposing
        ( Rule
        , ignoreErrorsForDirectories
        , ignoreErrorsForFiles
        )


{-| List of rules used with elm-review
-}
config : List Rule
config =
    [ NoDebug.Log.rule
    , NoDebug.TodoOrToString.rule
    , NoBooleanCase.rule
    , NoRedundantCons.rule
    , NoMissingTypeAnnotation.rule
    , NoUnused.Dependencies.rule
    , NoUnused.Parameters.rule
    , NoUnused.Patterns.rule
    , NoUnused.Variables.rule
    , NoUnused.CustomTypeConstructors.rule []
    , NoRedundantConcat.rule
    , ignoreErrorsForFiles [ "showcase/src/Main.elm" ] NoUnused.Exports.rule
    , NoExposingEverything.rule
    ]
        |> List.map (ignoreErrorsForDirectories [ "src/I18n" ])