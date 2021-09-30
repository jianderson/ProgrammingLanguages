module Interpreter where

import AbsNumbers

eval :: Exp -> Integer
eval (Num n) = n
eval (Plus n m) = (eval n) + (eval m)
eval (Times n m) = (eval n) * (eval m)
eval (Minus n m) = (eval n) - (eval m)
eval (Divide n m) = (eval n) `div` (eval m)
eval (Mod n m) = (eval n) `mod` (eval m)
eval (Neg n) = - (eval n)
--eval (Pwr n m) = (eval n) ^ (eval m)
--eval (Sqr n) = (eval n) $ (eval n)
