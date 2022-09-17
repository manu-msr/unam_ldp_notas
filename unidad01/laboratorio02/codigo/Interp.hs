module Interp where

import Grammars

interp :: ASA -> Int
interp (Num n) = n
interp (Suma i d) = interp i + interp d
interp (Resta i d) = interp i - interp d
interp (Mult i d) = interp i * interp d
interp (Div i d) = div (interp i) (interp d)
