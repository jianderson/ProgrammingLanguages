{-# OPTIONS_GHC -w #-}
{-# OPTIONS -fglasgow-exts -cpp #-}
{-# OPTIONS_GHC -fno-warn-incomplete-patterns -fno-warn-overlapping-patterns #-}
{-# LANGUAGE PatternSynonyms #-}

module ParLambdaNat
  ( happyError
  , myLexer
  , pProgram
  , pListExp
  , pExp1
  , pExp2
  , pExp3
  , pExp4
  , pExp6
  , pExp9
  , pExp10
  , pExp13
  , pExp15
  , pExp16
  , pExp17
  , pExp
  , pExp5
  , pExp7
  , pExp8
  , pExp11
  , pExp12
  , pExp14
  ) where

import Prelude

import qualified AbsLambdaNat
import LexLambdaNat
import qualified Data.Array as Happy_Data_Array
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.5

newtype HappyAbsSyn  = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn23 :: (Integer) -> (HappyAbsSyn )
happyIn23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn23 #-}
happyOut23 :: (HappyAbsSyn ) -> (Integer)
happyOut23 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut23 #-}
happyIn24 :: (AbsLambdaNat.Id) -> (HappyAbsSyn )
happyIn24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn24 #-}
happyOut24 :: (HappyAbsSyn ) -> (AbsLambdaNat.Id)
happyOut24 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut24 #-}
happyIn25 :: (AbsLambdaNat.Program) -> (HappyAbsSyn )
happyIn25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn25 #-}
happyOut25 :: (HappyAbsSyn ) -> (AbsLambdaNat.Program)
happyOut25 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut25 #-}
happyIn26 :: ([AbsLambdaNat.Exp]) -> (HappyAbsSyn )
happyIn26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn26 #-}
happyOut26 :: (HappyAbsSyn ) -> ([AbsLambdaNat.Exp])
happyOut26 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut26 #-}
happyIn27 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn27 #-}
happyOut27 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut27 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut27 #-}
happyIn28 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn28 #-}
happyOut28 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut28 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut28 #-}
happyIn29 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn29 #-}
happyOut29 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut29 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut29 #-}
happyIn30 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn30 #-}
happyOut30 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut30 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut30 #-}
happyIn31 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn31 #-}
happyOut31 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut31 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut31 #-}
happyIn32 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn32 #-}
happyOut32 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut32 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut32 #-}
happyIn33 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn33 #-}
happyOut33 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut33 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut33 #-}
happyIn34 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn34 #-}
happyOut34 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut34 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut34 #-}
happyIn35 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn35 #-}
happyOut35 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut35 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut35 #-}
happyIn36 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn36 #-}
happyOut36 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut36 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut36 #-}
happyIn37 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn37 #-}
happyOut37 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut37 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut37 #-}
happyIn38 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn38 #-}
happyOut38 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut38 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut38 #-}
happyIn39 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn39 #-}
happyOut39 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut39 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut39 #-}
happyIn40 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn40 #-}
happyOut40 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut40 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut40 #-}
happyIn41 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn41 #-}
happyOut41 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut41 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut41 #-}
happyIn42 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn42 #-}
happyOut42 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut42 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut42 #-}
happyIn43 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn43 #-}
happyOut43 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut43 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut43 #-}
happyIn44 :: (AbsLambdaNat.Exp) -> (HappyAbsSyn )
happyIn44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn44 #-}
happyOut44 :: (HappyAbsSyn ) -> (AbsLambdaNat.Exp)
happyOut44 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut44 #-}
happyInTok :: (Token) -> (HappyAbsSyn )
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn ) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x6d\x02\x6d\x02\x6d\x02\x8d\x02\xad\x02\xa3\x02\xc4\x02\xa8\x01\xa8\x01\xa8\x01\xa8\x01\xff\xff\x91\x01\x6d\x02\xc4\x02\xa8\x01\xa8\x01\xa8\x01\xa8\x01\xa8\x01\xf8\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf0\x00\x00\x00\xe0\x00\x00\x00\x6d\x02\x00\x00\xa8\x01\xe0\x00\x00\x00\xe0\x00\x00\x00\x00\x00\xba\x01\xe0\x00\xde\x00\xca\x00\x00\x00\x00\x00\xca\x00\x00\x00\x6d\x02\x6d\x02\x00\x00\x00\x00\x00\x00\x00\x00\xca\x00\x00\x00\xb6\x00\x6d\x02\xf5\xff\xb4\x00\xb4\x00\xb4\x00\x01\x00\xd2\x01\xb4\x00\xb4\x00\xb4\x00\xa4\x00\x9e\x00\x9e\x00\x9e\x00\x9e\x00\x97\x00\x88\x00\x00\x00\x6d\x02\x74\x00\xa8\x01\xa8\x01\x00\x00\x7f\x00\x6a\x00\x57\x00\x00\x00\x00\x00\xa8\x01\xa8\x01\x70\x00\xa8\x01\x00\x00\x00\x00\x03\x00\x00\x00\x6d\x02\x6d\x02\x6d\x02\x00\x00\x00\x00\x53\x00\x00\x00\x6d\x02\x38\x00\xfc\xff\x00\x00\x6d\x02\x6d\x02\x22\x00\x6d\x02\x00\x00\x02\x00\x6d\x02\x00\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x19\x00\x45\x00\x79\x01\x8f\x01\xa5\x01\xbb\x01\xe7\x01\x14\x02\x32\x02\x9c\x02\xd2\x02\x4a\x02\x05\x00\x63\x01\xd1\x01\xf6\x01\x05\x02\x5f\x02\x8b\x02\xbf\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4d\x01\x00\x00\xbb\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x37\x01\x21\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0c\x00\x0b\x01\x0b\x00\x00\x00\x00\x00\x00\x00\xbb\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x2f\x00\x09\x00\x50\x02\x41\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7c\x02\x23\x02\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf5\x00\xdf\x00\xc9\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb3\x00\x00\x00\x00\x00\x00\x00\x9d\x00\x87\x00\x00\x00\x71\x00\x00\x00\x00\x00\x5b\x00\x00\x00\x00\x00\x00\x00"#

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\xe8\xff\xe8\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xeb\xff\xcf\xff\xcd\xff\xc5\xff\xd0\xff\xce\xff\x00\x00\xd2\xff\x00\x00\xea\xff\xc6\xff\x00\x00\xd3\xff\x00\x00\xc7\xff\xc8\xff\xd9\xff\x00\x00\xd5\xff\x00\x00\xc9\xff\xca\xff\x00\x00\xdb\xff\x00\x00\x00\x00\xcb\xff\xe4\xff\xe2\xff\xe0\xff\x00\x00\xde\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe7\xff\x00\x00\xe9\xff\xe8\xff\x00\x00\x00\x00\x00\x00\xd4\xff\x00\x00\x00\x00\x00\x00\xdc\xff\xdd\xff\x00\x00\x00\x00\x00\x00\x00\x00\xd1\xff\xcc\xff\xda\xff\xd6\xff\x00\x00\x00\x00\x00\x00\xd7\xff\xd8\xff\x00\x00\xe6\xff\x00\x00\x00\x00\x00\x00\xe5\xff\x00\x00\x00\x00\x00\x00\x00\x00\xe1\xff\x00\x00\x00\x00\xdf\xff\xe3\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x02\x00\x01\x00\x02\x00\x00\x00\x01\x00\x01\x00\x12\x00\x05\x00\x06\x00\x01\x00\x16\x00\x01\x00\x01\x00\x0c\x00\x13\x00\x0c\x00\x0d\x00\x0e\x00\x0e\x00\x15\x00\x16\x00\x15\x00\x16\x00\x17\x00\x00\x00\x01\x00\x02\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x0f\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x0f\x00\x03\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x0a\x00\x07\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x03\x00\x0a\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x0a\x00\x16\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x17\x00\x09\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x17\x00\x12\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x17\x00\x16\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x17\x00\x04\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x17\x00\x08\x00\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x15\x00\xff\xff\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\xff\xff\xff\xff\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\xff\xff\xff\xff\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\xff\xff\xff\xff\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\xff\xff\xff\xff\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0f\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\xff\xff\xff\xff\x04\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\xff\xff\xff\xff\x02\x00\x05\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x16\x00\xff\xff\x01\x00\x02\x00\x06\x00\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x15\x00\x16\x00\x05\x00\x06\x00\xff\xff\x07\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x10\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\xff\xff\xff\xff\xff\xff\xff\xff\x05\x00\x06\x00\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x00\x00\x01\x00\x17\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\x08\x00\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\xff\xff\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x09\x00\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\x0a\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\x00\x00\x01\x00\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\x0d\x00\x0e\x00\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x01\x00\x02\x00\xff\xff\xff\xff\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\x0b\x00\xff\xff\x0d\x00\x0e\x00\x00\x00\x01\x00\x11\x00\xff\xff\xff\xff\x14\x00\x15\x00\x16\x00\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\xff\xff\x01\x00\x02\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\x0d\x00\x0e\x00\x00\x00\x01\x00\x11\x00\x14\x00\x15\x00\x14\x00\x15\x00\x16\x00\x01\x00\x02\x00\xff\xff\x0b\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\xff\xff\xff\xff\x01\x00\x02\x00\x0d\x00\x15\x00\xff\xff\xff\xff\x11\x00\xff\xff\xff\xff\x14\x00\x15\x00\x16\x00\x0d\x00\x00\x00\x01\x00\xff\xff\x11\x00\x00\x00\x01\x00\x14\x00\x15\x00\x16\x00\xff\xff\x01\x00\x02\x00\x0c\x00\x0d\x00\x0e\x00\xff\xff\x0c\x00\x0d\x00\x0e\x00\xff\xff\xff\xff\x15\x00\x0d\x00\x00\x00\x01\x00\x15\x00\xff\xff\xff\xff\xff\xff\x14\x00\x15\x00\x16\x00\xff\xff\xff\xff\xff\xff\x0c\x00\x0d\x00\x0e\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x1e\x00\x1d\x00\x1e\x00\x16\x00\x17\x00\x17\x00\x4a\x00\x4b\x00\x4c\x00\x5f\x00\x1f\x00\x4d\x00\x4f\x00\x6c\x00\x66\x00\x56\x00\x19\x00\x1a\x00\x38\x00\x16\x00\x1f\x00\x16\x00\x1f\x00\xff\xff\x16\x00\x17\x00\x46\x00\x47\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x45\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x69\x00\x60\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x45\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x67\x00\x44\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x45\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x62\x00\x5b\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x6d\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x58\x00\x5c\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x6c\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x5d\x00\x1f\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x69\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\xff\xff\x49\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x6a\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\xff\xff\x4a\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x67\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\xff\xff\x1f\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x62\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\xff\xff\x53\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x63\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\xff\xff\x56\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x64\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x16\x00\x00\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x4e\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x00\x00\x00\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x50\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x00\x00\x00\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x51\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x00\x00\x00\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x54\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x00\x00\x00\x00\x2f\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x33\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x00\x00\x00\x00\x43\x00\x30\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x00\x00\x00\x00\x1e\x00\x42\x00\x31\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x1f\x00\x00\x00\x1d\x00\x1e\x00\x41\x00\x32\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x16\x00\x1f\x00\x4b\x00\x4c\x00\x00\x00\x3f\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x54\x00\x34\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\x00\x00\x00\x00\x00\x00\x00\x00\x4b\x00\x4c\x00\x2a\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x2b\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x16\x00\x17\x00\xff\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3e\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x2c\x00\x29\x00\x27\x00\x23\x00\x21\x00\x00\x00\x00\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x28\x00\x29\x00\x27\x00\x23\x00\x21\x00\x00\x00\x00\x00\x24\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x00\x00\x26\x00\x27\x00\x23\x00\x21\x00\x00\x00\x00\x00\x3d\x00\x25\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x00\x00\x00\x00\x27\x00\x23\x00\x21\x00\x00\x00\x00\x00\x00\x00\x58\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x00\x00\x00\x00\x27\x00\x23\x00\x21\x00\x00\x00\x00\x00\x00\x00\x3c\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x00\x00\x00\x00\x27\x00\x23\x00\x21\x00\x00\x00\x00\x00\x16\x00\x17\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x00\x00\x00\x00\x5d\x00\x23\x00\x21\x00\x39\x00\x1a\x00\x00\x00\x00\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x00\x00\x00\x00\x5e\x00\x23\x00\x21\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x1d\x00\x1e\x00\x00\x00\x00\x00\x22\x00\x23\x00\x21\x00\x00\x00\x00\x00\x00\x00\x36\x00\x00\x00\x2e\x00\x37\x00\x16\x00\x17\x00\x38\x00\x00\x00\x00\x00\x2f\x00\x16\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x16\x00\x17\x00\x00\x00\x1d\x00\x1e\x00\x59\x00\x21\x00\x00\x00\x00\x00\x00\x00\x00\x00\x1f\x00\x18\x00\x19\x00\x1a\x00\x2e\x00\x37\x00\x16\x00\x17\x00\x38\x00\x20\x00\x21\x00\x2f\x00\x16\x00\x1f\x00\x1d\x00\x1e\x00\x00\x00\x3b\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x00\x00\x00\x00\x1d\x00\x1e\x00\x2e\x00\x21\x00\x00\x00\x00\x00\x41\x00\x00\x00\x00\x00\x2f\x00\x16\x00\x1f\x00\x2e\x00\x16\x00\x17\x00\x00\x00\x38\x00\x16\x00\x17\x00\x2f\x00\x16\x00\x1f\x00\x00\x00\x1d\x00\x1e\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x18\x00\x19\x00\x1a\x00\x00\x00\x00\x00\x4c\x00\x2e\x00\x16\x00\x17\x00\x1b\x00\x00\x00\x00\x00\x00\x00\x2f\x00\x16\x00\x1f\x00\x00\x00\x00\x00\x00\x00\x3a\x00\x19\x00\x1a\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (20, 58) [
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55),
	(56 , happyReduce_56),
	(57 , happyReduce_57),
	(58 , happyReduce_58)
	]

happy_n_terms = 24 :: Int
happy_n_nonterms = 22 :: Int

happyReduce_20 = happySpecReduce_1  0# happyReduction_20
happyReduction_20 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (TI happy_var_1)) -> 
	happyIn23
		 ((read happy_var_1) :: Integer
	)}

happyReduce_21 = happySpecReduce_1  1# happyReduction_21
happyReduction_21 happy_x_1
	 =  case happyOutTok happy_x_1 of { (PT _ (T_Id happy_var_1)) -> 
	happyIn24
		 (AbsLambdaNat.Id happy_var_1
	)}

happyReduce_22 = happySpecReduce_1  2# happyReduction_22
happyReduction_22 happy_x_1
	 =  case happyOut26 happy_x_1 of { happy_var_1 -> 
	happyIn25
		 (AbsLambdaNat.Prog happy_var_1
	)}

happyReduce_23 = happySpecReduce_0  3# happyReduction_23
happyReduction_23  =  happyIn26
		 ([]
	)

happyReduce_24 = happySpecReduce_1  3# happyReduction_24
happyReduction_24 happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	happyIn26
		 ((:[]) happy_var_1
	)}

happyReduce_25 = happySpecReduce_3  3# happyReduction_25
happyReduction_25 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_1 of { happy_var_1 -> 
	case happyOut26 happy_x_3 of { happy_var_3 -> 
	happyIn26
		 ((:) happy_var_1 happy_var_3
	)}}

happyReduce_26 = happyReduce 4# 4# happyReduction_26
happyReduction_26 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut38 happy_x_4 of { happy_var_4 -> 
	happyIn27
		 (AbsLambdaNat.EAbs happy_var_2 happy_var_4
	) `HappyStk` happyRest}}

happyReduce_27 = happySpecReduce_1  4# happyReduction_27
happyReduction_27 happy_x_1
	 =  case happyOut28 happy_x_1 of { happy_var_1 -> 
	happyIn27
		 (happy_var_1
	)}

happyReduce_28 = happyReduce 8# 5# happyReduction_28
happyReduction_28 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut38 happy_x_2 of { happy_var_2 -> 
	case happyOut38 happy_x_4 of { happy_var_4 -> 
	case happyOut38 happy_x_6 of { happy_var_6 -> 
	case happyOut38 happy_x_8 of { happy_var_8 -> 
	happyIn28
		 (AbsLambdaNat.EIf happy_var_2 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

happyReduce_29 = happySpecReduce_1  5# happyReduction_29
happyReduction_29 happy_x_1
	 =  case happyOut29 happy_x_1 of { happy_var_1 -> 
	happyIn28
		 (happy_var_1
	)}

happyReduce_30 = happyReduce 6# 6# happyReduction_30
happyReduction_30 (happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut24 happy_x_2 of { happy_var_2 -> 
	case happyOut38 happy_x_4 of { happy_var_4 -> 
	case happyOut38 happy_x_6 of { happy_var_6 -> 
	happyIn29
		 (AbsLambdaNat.ELet happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest}}}

happyReduce_31 = happySpecReduce_1  6# happyReduction_31
happyReduction_31 happy_x_1
	 =  case happyOut30 happy_x_1 of { happy_var_1 -> 
	happyIn29
		 (happy_var_1
	)}

happyReduce_32 = happyReduce 7# 7# happyReduction_32
happyReduction_32 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut24 happy_x_3 of { happy_var_3 -> 
	case happyOut38 happy_x_5 of { happy_var_5 -> 
	case happyOut38 happy_x_7 of { happy_var_7 -> 
	happyIn30
		 (AbsLambdaNat.ERec happy_var_3 happy_var_5 happy_var_7
	) `HappyStk` happyRest}}}

happyReduce_33 = happySpecReduce_1  7# happyReduction_33
happyReduction_33 happy_x_1
	 =  case happyOut39 happy_x_1 of { happy_var_1 -> 
	happyIn30
		 (happy_var_1
	)}

happyReduce_34 = happySpecReduce_2  8# happyReduction_34
happyReduction_34 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn31
		 (AbsLambdaNat.EHd happy_var_2
	)}

happyReduce_35 = happySpecReduce_2  8# happyReduction_35
happyReduction_35 happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn31
		 (AbsLambdaNat.ETl happy_var_2
	)}

happyReduce_36 = happySpecReduce_1  8# happyReduction_36
happyReduction_36 happy_x_1
	 =  case happyOut40 happy_x_1 of { happy_var_1 -> 
	happyIn31
		 (happy_var_1
	)}

happyReduce_37 = happySpecReduce_3  9# happyReduction_37
happyReduction_37 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut33 happy_x_3 of { happy_var_3 -> 
	happyIn32
		 (AbsLambdaNat.ELE happy_var_1 happy_var_3
	)}}

happyReduce_38 = happySpecReduce_1  9# happyReduction_38
happyReduction_38 happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	happyIn32
		 (happy_var_1
	)}

happyReduce_39 = happySpecReduce_3  10# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut42 happy_x_3 of { happy_var_3 -> 
	happyIn33
		 (AbsLambdaNat.EPlus happy_var_1 happy_var_3
	)}}

happyReduce_40 = happySpecReduce_3  10# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut33 happy_x_1 of { happy_var_1 -> 
	case happyOut42 happy_x_3 of { happy_var_3 -> 
	happyIn33
		 (AbsLambdaNat.EMinus happy_var_1 happy_var_3
	)}}

happyReduce_41 = happySpecReduce_3  10# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	case happyOut43 happy_x_3 of { happy_var_3 -> 
	happyIn33
		 (AbsLambdaNat.ETimes happy_var_1 happy_var_3
	)}}

happyReduce_42 = happySpecReduce_1  10# happyReduction_42
happyReduction_42 happy_x_1
	 =  case happyOut42 happy_x_1 of { happy_var_1 -> 
	happyIn33
		 (happy_var_1
	)}

happyReduce_43 = happySpecReduce_2  11# happyReduction_43
happyReduction_43 happy_x_2
	happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	case happyOut44 happy_x_2 of { happy_var_2 -> 
	happyIn34
		 (AbsLambdaNat.EApp happy_var_1 happy_var_2
	)}}

happyReduce_44 = happySpecReduce_1  11# happyReduction_44
happyReduction_44 happy_x_1
	 =  case happyOut44 happy_x_1 of { happy_var_1 -> 
	happyIn34
		 (happy_var_1
	)}

happyReduce_45 = happySpecReduce_1  12# happyReduction_45
happyReduction_45 happy_x_1
	 =  happyIn35
		 (AbsLambdaNat.ENil
	)

happyReduce_46 = happySpecReduce_3  12# happyReduction_46
happyReduction_46 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	case happyOut35 happy_x_3 of { happy_var_3 -> 
	happyIn35
		 (AbsLambdaNat.ECons happy_var_1 happy_var_3
	)}}

happyReduce_47 = happySpecReduce_1  12# happyReduction_47
happyReduction_47 happy_x_1
	 =  case happyOut36 happy_x_1 of { happy_var_1 -> 
	happyIn35
		 (happy_var_1
	)}

happyReduce_48 = happySpecReduce_1  13# happyReduction_48
happyReduction_48 happy_x_1
	 =  case happyOut23 happy_x_1 of { happy_var_1 -> 
	happyIn36
		 (AbsLambdaNat.EInt happy_var_1
	)}

happyReduce_49 = happySpecReduce_1  13# happyReduction_49
happyReduction_49 happy_x_1
	 =  case happyOut37 happy_x_1 of { happy_var_1 -> 
	happyIn36
		 (happy_var_1
	)}

happyReduce_50 = happySpecReduce_1  14# happyReduction_50
happyReduction_50 happy_x_1
	 =  case happyOut24 happy_x_1 of { happy_var_1 -> 
	happyIn37
		 (AbsLambdaNat.EVar happy_var_1
	)}

happyReduce_51 = happySpecReduce_3  14# happyReduction_51
happyReduction_51 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut38 happy_x_2 of { happy_var_2 -> 
	happyIn37
		 (happy_var_2
	)}

happyReduce_52 = happySpecReduce_1  15# happyReduction_52
happyReduction_52 happy_x_1
	 =  case happyOut27 happy_x_1 of { happy_var_1 -> 
	happyIn38
		 (happy_var_1
	)}

happyReduce_53 = happySpecReduce_1  16# happyReduction_53
happyReduction_53 happy_x_1
	 =  case happyOut31 happy_x_1 of { happy_var_1 -> 
	happyIn39
		 (happy_var_1
	)}

happyReduce_54 = happySpecReduce_1  17# happyReduction_54
happyReduction_54 happy_x_1
	 =  case happyOut41 happy_x_1 of { happy_var_1 -> 
	happyIn40
		 (happy_var_1
	)}

happyReduce_55 = happySpecReduce_1  18# happyReduction_55
happyReduction_55 happy_x_1
	 =  case happyOut32 happy_x_1 of { happy_var_1 -> 
	happyIn41
		 (happy_var_1
	)}

happyReduce_56 = happySpecReduce_1  19# happyReduction_56
happyReduction_56 happy_x_1
	 =  case happyOut43 happy_x_1 of { happy_var_1 -> 
	happyIn42
		 (happy_var_1
	)}

happyReduce_57 = happySpecReduce_1  20# happyReduction_57
happyReduction_57 happy_x_1
	 =  case happyOut34 happy_x_1 of { happy_var_1 -> 
	happyIn43
		 (happy_var_1
	)}

happyReduce_58 = happySpecReduce_1  21# happyReduction_58
happyReduction_58 happy_x_1
	 =  case happyOut35 happy_x_1 of { happy_var_1 -> 
	happyIn44
		 (happy_var_1
	)}

happyNewToken action sts stk [] =
	happyDoAction 23# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	PT _ (TS _ 1) -> cont 1#;
	PT _ (TS _ 2) -> cont 2#;
	PT _ (TS _ 3) -> cont 3#;
	PT _ (TS _ 4) -> cont 4#;
	PT _ (TS _ 5) -> cont 5#;
	PT _ (TS _ 6) -> cont 6#;
	PT _ (TS _ 7) -> cont 7#;
	PT _ (TS _ 8) -> cont 8#;
	PT _ (TS _ 9) -> cont 9#;
	PT _ (TS _ 10) -> cont 10#;
	PT _ (TS _ 11) -> cont 11#;
	PT _ (TS _ 12) -> cont 12#;
	PT _ (TS _ 13) -> cont 13#;
	PT _ (TS _ 14) -> cont 14#;
	PT _ (TS _ 15) -> cont 15#;
	PT _ (TS _ 16) -> cont 16#;
	PT _ (TS _ 17) -> cont 17#;
	PT _ (TS _ 18) -> cont 18#;
	PT _ (TS _ 19) -> cont 19#;
	PT _ (TS _ 20) -> cont 20#;
	PT _ (TI happy_dollar_dollar) -> cont 21#;
	PT _ (T_Id happy_dollar_dollar) -> cont 22#;
	_ -> happyError' (tk:tks)
	}

happyError_ 23# tk tks = happyError' tks
happyError_ _ tk tks = happyError' (tk:tks)

happyThen :: () => Err a -> (a -> Err b) -> Err b
happyThen = ((>>=))
happyReturn :: () => a -> Err a
happyReturn = (return)
happyThen1 m k tks = ((>>=)) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> Err a
happyReturn1 = \a tks -> (return) a
happyError' :: () => [(Token)] -> Err a
happyError' = happyError

pProgram tks = happySomeParser where
  happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (happyOut25 x))

pListExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 1# tks) (\x -> happyReturn (happyOut26 x))

pExp1 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 2# tks) (\x -> happyReturn (happyOut27 x))

pExp2 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 3# tks) (\x -> happyReturn (happyOut28 x))

pExp3 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 4# tks) (\x -> happyReturn (happyOut29 x))

pExp4 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 5# tks) (\x -> happyReturn (happyOut30 x))

pExp6 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 6# tks) (\x -> happyReturn (happyOut31 x))

pExp9 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 7# tks) (\x -> happyReturn (happyOut32 x))

pExp10 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 8# tks) (\x -> happyReturn (happyOut33 x))

pExp13 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 9# tks) (\x -> happyReturn (happyOut34 x))

pExp15 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 10# tks) (\x -> happyReturn (happyOut35 x))

pExp16 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 11# tks) (\x -> happyReturn (happyOut36 x))

pExp17 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 12# tks) (\x -> happyReturn (happyOut37 x))

pExp tks = happySomeParser where
  happySomeParser = happyThen (happyParse 13# tks) (\x -> happyReturn (happyOut38 x))

pExp5 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 14# tks) (\x -> happyReturn (happyOut39 x))

pExp7 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 15# tks) (\x -> happyReturn (happyOut40 x))

pExp8 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 16# tks) (\x -> happyReturn (happyOut41 x))

pExp11 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 17# tks) (\x -> happyReturn (happyOut42 x))

pExp12 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 18# tks) (\x -> happyReturn (happyOut43 x))

pExp14 tks = happySomeParser where
  happySomeParser = happyThen (happyParse 19# tks) (\x -> happyReturn (happyOut44 x))

happySeq = happyDontSeq


type Err = Either String

happyError :: [Token] -> Err a
happyError ts = Left $
  "syntax error at " ++ tokenPos ts ++
  case ts of
    []      -> []
    [Err _] -> " due to lexer error"
    t:_     -> " before `" ++ (prToken t) ++ "'"

myLexer :: String -> [Token]
myLexer = tokens
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}
{-# LINE 13 "<command-line>" #-}
# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 13 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}

















{-# LINE 13 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc6015_0/ghc_2.h" #-}


































































































































































{-# LINE 13 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 

{-# LINE 13 "templates/GenericTemplate.hs" #-}





-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif
{-# LINE 46 "templates/GenericTemplate.hs" #-}


data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList





{-# LINE 67 "templates/GenericTemplate.hs" #-}

{-# LINE 77 "templates/GenericTemplate.hs" #-}

{-# LINE 86 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is 0#, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}


          case action of
                0#           -> {- nothing -}
                                     happyFail i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}

                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}


                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = indexShortOffAddr happyActOffsets st
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else False
         action
          | check     = indexShortOffAddr happyTable off_i
          | otherwise = indexShortOffAddr happyDefActions st


indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#





data HappyAddr = HappyA# Happy_GHC_Exts.Addr#




-----------------------------------------------------------------------------
-- HappyState data type (not arrays)

{-# LINE 170 "templates/GenericTemplate.hs" #-}

-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = indexShortOffAddr happyGotoOffsets st1
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i



          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = indexShortOffAddr happyGotoOffsets st
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (0# is the error token)

-- parse error if we are in recovery and we fail again
happyFail 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--      trace "failing" $ 
        happyError_ i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  0# tk old_st (HappyCons ((action)) (sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        happyDoAction 0# tk action sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail  i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ( (Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
