-- Haskell data types for the abstract syntax.
-- Generated by the BNF converter.

{-# LANGUAGE GeneralizedNewtypeDeriving #-}

-- | The abstract syntax of language LambdaNat3.

module AbsLambdaNat where

import Prelude (String)
import qualified Prelude as C (Eq, Ord, Show, Read)
import qualified Data.String

data Program = Prog Exp
  deriving (C.Eq, C.Ord, C.Show, C.Read)

data Exp
    = EAbs Id Exp
    | EIf Exp Exp Exp Exp
    | ELet Id Exp Exp
    | ERec Id Exp Exp
    | EMinusOne Exp
    | EApp Exp Exp
    | ENat0
    | ENatS Exp
    | EVar Id
    | EFix Exp
  deriving (C.Eq, C.Ord, C.Show, C.Read)

newtype Id = Id String
  deriving (C.Eq, C.Ord, C.Show, C.Read, Data.String.IsString)

