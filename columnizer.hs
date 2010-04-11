module Columnizer (columnSort) where
import List

columnSort xs n = concat (transpose (slice sliceSize xs))
  where 
    sliceSize = 
      ceiling (fromIntegral(length xs) / fromIntegral(n))

slice _ [] = []
slice n xs = firstSlice : remainingSlices
  where
    firstSlice      = take n xs
    remainingSlices = slice n (drop n xs)
