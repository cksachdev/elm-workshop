module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


model =
    { result =
        { id = 1
        , name = "TheSeamau5/elm-checkerboardgrid-tutorial"
        , stars = 66
        }
    }


main =
    let
        elmHubHeader =
            header []
                [ h1 [] [ text "ElmHub" ]
                , span [ class "tagline" ] [ text "Like GitHub, but for Elm things." ]
                ]

        prefix =
            "https://github.com/"
    in
        div [ class "content" ]
            [ elmHubHeader
            , ul [ class "results" ]
                [ li []
                    [ span [ class "star-count" ]
                        [ text (toString model.result.stars)
                          -- TODO display the number of stars here.
                          --
                          -- HINT: You'll need some parentheses to do this!
                        ]
                      -- TODO use the model to put a link here that points to
                      -- https://github.com/TheSeamau5/elm-checkerboardgrid-tutorial
                      -- by prepending the "https://github.com/" part.
                    , a
                        [ href (prefix ++ model.result.name) ]
                        [ text model.result.name ]
                    ]
                ]
            ]
