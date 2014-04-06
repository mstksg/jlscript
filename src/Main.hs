module Main where

import Data.Map.Strict           (Map)
import Data.Text                 (Text)
import qualified Data.Map.Strict as M
import qualified Data.Text       as T

newtype Key = Key Text
newtype Obj = Obj (Map Key Item)
newtype Arr = Arr [Item]
              
data Func = Func { funcReq :: [Key]
                 , funcOpt :: [Key]
                 , funcBod :: [Statement]
                 }

data Item = ItemObj Obj | ItemArr Arr | ItemPrim Prim

data Prim = PrimInt Integer | PrimDouble Double | PrimFunc Func

data Statement

main :: IO ()
main = putStrLn "hello world"
