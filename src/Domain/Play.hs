module Domain.Play where

import ClassyPrelude

data Config = Config
  { logFile :: FilePath }
  deriving (Show, Eq)

type Program = ReaderT Config IO
-- ReaderT Config IO Text = ReaderT {Config -> IO Text}

readLog :: Program Text
readLog = do
  (Config logFile) <- ask
  x <- readFile logFile
  return $ decodeUtf8 x

{-
readLog :: Config -> IO Text 
readLog (Config logFile) = do
  x <- readFile logFile
  return $ decodeUtf8 x


writeLog :: Config -> Text -> IO ()
writeLog (Config logFile) message = do
  x <- readFile logFile
  writeFile logFile $ encodeUtf8 $ decodeUtf8 x <> message

getUserInput :: Config -> IO Text
getUserInput config  = do
  input <- getLine
  writeLog config $ "Input is : " <> input
  return input

runProgram :: Config -> IO ()
runProgram config = do
  input <- getUserInput config
  putStrLn $ "you wrote : " <> input
-}
