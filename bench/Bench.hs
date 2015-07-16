import Lib
import Prelude as P
import Data.Array.Accelerate as A
import Data.Array.Accelerate.Interpreter as A

theArray :: Acc (Array DIM1 Int)
theArray =
    generate (constant $ Z :. 1000000)
        $ \ix ->
            let ix' = (unindex1 ix)
            in (ix' + 1) * ix'

theNumber :: Acc (Scalar Int)
theNumber =
    A.fold (+) 0 $ A.map (* 3) theArray

main :: IO ()
main = do
  putStrLn $ show $ Lib.run theNumber
