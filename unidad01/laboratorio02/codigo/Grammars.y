{
module Grammars where

import Data.Char
}

%name parse
%tokentype { Token }
%error { parseError }

%token 
      int             { TokenNum $$ }
      '+'             { TokenSuma }
      '-'             { TokenResta }
      '*'             { TokenMult }
      '/'             { TokenDiv }
      '('             { TokenPA }
      ')'             { TokenPC }

%%

ASA : int                  { Num $1 }
    | '(' '+' ASA ASA ')'  { Suma $3 $4}
    | '(' '-' ASA ASA ')'  { Resta $3 $4}
    | '(' '*' ASA ASA ')'  { Mult $3 $4}
    | '(' '/' ASA ASA ')'  { Div $3 $4} 

{

parseError :: [Token] -> a
parseError _ = error "Parse error"


data ASA = Num Int
          | Suma ASA ASA
          | Resta ASA ASA
          | Mult ASA ASA
          | Div ASA ASA
          deriving(Show)

data Token = TokenNum Int
           | TokenSuma
           | TokenResta
           | TokenMult
           | TokenDiv
           | TokenPA
           | TokenPC
           deriving(Show)

lexer :: String -> [Token]
lexer [] = []
lexer (' ' : xs) = lexer xs
lexer ('(' : xs) = TokenPA:(lexer xs)
lexer (')' : xs) = TokenPC:(lexer xs)
lexer ('+' : xs) = TokenSuma:(lexer xs)
lexer ('-' : xs) = TokenResta:(lexer xs)
lexer ('*' : xs) = TokenMult:(lexer xs)
lexer ('/' : xs) = TokenDiv:(lexer xs)
lexer (x:xs)
    | isDigit x = lexNum (x:xs)

lexNum :: String -> [Token]
lexNum cs = TokenNum (read num) : lexer rest
      where (num,rest) = span isDigit cs

main = getContents >>= print . parse . lexer

}