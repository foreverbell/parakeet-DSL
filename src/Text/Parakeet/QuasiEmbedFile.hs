{-# LANGUAGE TemplateHaskell, QuasiQuotes #-}

module Text.Parakeet.QuasiEmbedFile (
  efile
) where

import Language.Haskell.TH
import Language.Haskell.TH.Quote
import Text.Parsec

type Parser a = Parsec String () a

data Chunk 
  = Lit String
  | Value String

templateParser :: Parser [Chunk]
templateParser = mergeLit <$> manyTill (lit <|> dollar <|> value) eof 
  where
    lit = Lit <$> many1 (satisfy (/= '$'))
    dollar = Lit <$> (try (string "$$") *> pure "$")
    value = Value <$> between (char '$') (char '$') var
      where var = many1 $ satisfy (/= '$')
    mergeLit = foldr f []
      where 
        f (Lit l) (Lit xl:xs) = Lit (l++xl) : xs 
        f x xs = x : xs

parseQuoteExp :: FilePath -> Q Exp
parseQuoteExp f = do
  c <- runIO $ readFile f
  case runParser templateParser () f c of
       Right chunks -> listE $
         flip map chunks $ \elem ->
           case elem of
                Lit lit -> [| lit |]
                Value v -> varE (mkName v)
       Left err -> fail ("invalid template file\n" ++ show err)

efile :: QuasiQuoter
efile = QuasiQuoter { quoteExp  = parseQuoteExp
                    , quotePat  = undefined
                    , quoteType = undefined
                    , quoteDec  = undefined
                    }
