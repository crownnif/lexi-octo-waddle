-- math stuff

n x = (*) 5 x - 7
o x = (*) ((+) ((*) (-3) x) 5) 2
l x = (*) ((+) ((*) 3 x) 3) ((-) ((*) 2 x) 7)
k(x) = (2x - 3)3 + 4
m(x,y) =( 2x · 3y) - 4


--import Data.Fixed
potenz x n -- x^n; x ∈ R; n ∈ N
  | n == 0 = 0
  | n == 1 = x
  | n > 0 = x * (potenz x (n-1))
  | n < 0 = 1 / (x * (potenz x ((-n)-1)))
--  | not (mod n 1) == 1 = x^((read (tail (tail (show 0.75)))/100) ::Int)
