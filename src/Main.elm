module Main exposing (..)

-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--

import Browser
import Html exposing (Html, button, div, table, td, text, tr)
import Html.Events exposing (onClick)



-- MAIN


main =
    Browser.sandbox { init = init, update = update, view = view }



-- MODEL
--


type alias Hand =
    { sb : Int }


type alias Model =
    Hand


init : Model
init =
    Hand 997



-- UPDATE


type Msg
    = Increment
    | Decrement


update : Msg -> Model -> Model
update msg model =
    model



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ handToTable model
        ]


handToTable : Model -> Html Msg
handToTable model =
    table []
        [ tr []
            [ td [] []
            , td [] [ text "Pot" ]
            ]
        , tr []
            [ td [] [ text "SB" ]
            , td [] [ text (String.fromInt model.sb) ]
            ]
        ]
