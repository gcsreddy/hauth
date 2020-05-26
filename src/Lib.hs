module Lib
    ( someFunc
    ) where

import ClassyPrelude
import Adapter.InMemory.Auth
import Domain.Auth
--import Domain.Play
import Domain.Validation

someFunc :: IO ()
someFunc = putStrLn "someFunc"

{-
:m +Data.Aeson
:m +Data.Time
:m +Data.Time.Clock.POSIX
:m +Data.Time.Lens
:m +Text.Regex.PCRE.Heavy

 -}
