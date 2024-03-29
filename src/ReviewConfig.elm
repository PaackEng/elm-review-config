module ReviewConfig exposing (config)

{-| This package carries the configuration rules used for elm-review by Paack!


# Definition

@docs config

-}

import NoBooleanCase
import NoDebug.Log
import NoDebug.TodoOrToString
import NoDeprecated
import NoExposingEverything
import NoInvalidRGBValues
import NoLeftPizza
import NoMissingTypeAnnotation
import NoPrematureLetComputation
import NoRedundantConcat
import NoRedundantCons
import NoUnused.CustomTypeConstructors
import NoUnused.Dependencies
import NoUnused.Exports
import NoUnused.Modules
import NoUnused.Parameters
import NoUnused.Patterns
import NoUnused.Variables
import Review.Rule exposing (Rule, ignoreErrorsForDirectories)
import Simplify


{-| List of rules used with elm-review
-}
config : List Rule
config =
    [ NoBooleanCase.rule
    , NoDebug.Log.rule
    , NoDebug.TodoOrToString.rule
    , NoDeprecated.rule NoDeprecated.defaults
    , NoInvalidRGBValues.rule
    , NoLeftPizza.rule NoLeftPizza.Redundant
    , NoMissingTypeAnnotation.rule
    , NoPrematureLetComputation.rule
    , NoRedundantConcat.rule
    , NoRedundantCons.rule
    , NoUnused.CustomTypeConstructors.rule []
    , NoUnused.Dependencies.rule
    , NoUnused.Exports.rule
    , NoUnused.Parameters.rule
    , NoUnused.Patterns.rule
    , NoUnused.Variables.rule
    , Simplify.rule Simplify.defaults
    , ignoreErrorsForDirectories
        [ frontendKitDirectory ]
        NoUnused.Modules.rule
    ]


frontendKitDirectory : String
frontendKitDirectory =
    "frontend-elm-kit"
