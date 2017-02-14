module Counter exposing (..)

import Html exposing (..)
import Html.Events exposing (onClick)

type alias Model = { count: Int }

type Msg =
  Increment |
  Decrement

model =
  Model 0

update msg model =
  case msg of
    Increment ->
      ({model | count = model.count + 1})

    Decrement ->
      ({model | count = model.count - 1})


view model =
  div [] [ p [] [text (toString model.count)],
        button [onClick Increment] [text "Increment"] ,
        button [onClick Decrement] [text "Decrement"]
        ]


main =
  Html.beginnerProgram
  {
    model = model,
    view = view,
    update = update
  }
