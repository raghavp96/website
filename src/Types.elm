module Types exposing (..)

import Browser
import Browser.Navigation as Nav
import Url
import Html exposing (Html)

type alias Document msg =
  { title : String, body : List (Html msg)  }

type Msg
    = LeftWork | RightWork | LeftProject | RightProject | LinkClicked Browser.UrlRequest | UrlChanged Url.Url

type alias WorkExperienceEntry = 
    { title : String, company : String, blurb: String, description : List String, link : String, tags : List String }

type alias ProjectEntry = 
    { title : String, githubProfile: String, blurb: String, description : String, tags : List String }

type alias AboutEntry = List String

type Route
    = DefaultRoute | WorkRoute | ProjectRoute | InterestRoute | NotFoundRoute

type alias Model =
    { 
        key : Nav.Key, 
        url : Url.Url, 
        workIndex : Int, 
        projectIndex : Int
    }