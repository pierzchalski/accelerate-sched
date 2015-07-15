module Lib
    ( Lib.run
    ) where

import Prelude as P
import Data.Array.Accelerate as A
import Data.Array.Accelerate.Interpreter as A

run :: Arrays a => Acc a -> a
run acc = A.run acc

