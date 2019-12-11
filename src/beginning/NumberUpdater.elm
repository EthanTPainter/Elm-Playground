module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)

-- MAIN
main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL
init: Model
init = 0

-- UPDATE
type Msg = Increment | Decrement 

update: Msg -> Model -> Model
update msg model = 
  case msg of
    Increment ->
      model + 1

    Decrement ->
      model - 1

-- VIEW
view: Model -> Html msg
view model =
  div []
    [ button [onClick Increment ] [ text "+" ]
    , div [] [ text (String.fromInt model) ]
    , button [onClick Decrement ] [text "-" ]
    ]