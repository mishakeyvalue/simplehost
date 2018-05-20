module Main where

import           Data.Semigroup                ((<>))
import           Network.Wai.Middleware.Static
import           Options.Applicative
import           Web.Scotty                    (middleware, scotty)

data Config = Config
    { directory :: String
    , port      :: Int }

config :: Parser Config
config = Config
    <$> strOption
        (  long "directory"
        <> short 'd'
        <> help "Directory to serve"
        <> value ".")
    <*> option auto
        ( long "port"
        <> short 'p'
        <> help "Port to listen to"
        <> showDefault
        <> value 3000
        <> metavar "INT")

main :: IO ()
main = run =<< execParser opts
  where
    opts = info (config <**> helper)
      ( fullDesc
     <> progDesc "Serve your directory with static files"
     <> header "simpehost" )

run :: Config -> IO ()
run (Config d p) = do
    scotty p $ do
        middleware $ staticPolicy (noDots >-> addBase d)

