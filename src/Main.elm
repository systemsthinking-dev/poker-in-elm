module Main exposing (..)

import Browser
import Html exposing (Html, text, div, h1, img)
import Html.Attributes exposing (src)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    div []
        [ img [ src "/logo.svg" ] []
        , h1 [] [ text "Your Elm App is working!" ]
        ]

documentView : Model -> Browser.Document Msg
documentView model =
  { title = "whatever"
  , body = [ view model ]
  }


---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.document
        { view = documentView
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
