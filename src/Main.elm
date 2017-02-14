module Main exposing (..)

import Html exposing (..)
import Color exposing (..)
import Element exposing (..)
import Collage exposing (..)


type alias Model =
    {}


model =
    Model


update msg model =
    model


view model =
    Element.toHtml
        (container 1200 700 middle <|
            collage 1200 800 [ makeSquare black 70 ]
        )


main =
    Html.beginnerProgram
        { model = model
        , view = view
        , update = update
        }


makeSquare color size =
    filled color
        (rect size 20)
