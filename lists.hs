
nTes liste n
  | null liste || n < 0 = 0 --FIXME: wie string zurückgeben?
  | n == 0 = head liste
  | otherwise = nTes (tail liste) (n-1)

letztes liste
  | null liste = 0
  | tail liste == [] = head liste
  | otherwise = letztes (tail liste)

entfernen liste x
  | null liste = []
  | head liste == x = entfernen (tail liste) x
  | otherwise = (head liste) : (entfernen (tail liste) x)

ersetzen liste x newX
  | null liste = []
  | head liste == x = newX : (ersetzen (tail liste) x newX)
  | otherwise = (head liste) : (ersetzen (tail liste) x newX)

einfuegen objekt liste vergleich --z.B. einfuegen 4 [2, 7, 9] ( <)
  | null liste = [objekt]
  | vergleich objekt (head liste) = objekt:liste
  | otherwise = (head liste):(einfuegen objekt (tail liste) vergleich)

verketten liste1 liste2
  | null liste1 || null liste2 = []
--  | not (null listeR) = [((head listeR), (head listeR))]
  | otherwise = ((head liste1),(head liste2)) : (verketten (tail liste1) (tail liste2))
--  where listeR
--          | null liste1 = liste1
--          | null liste2 = liste2
--          | otherwise = []

umdrehen liste
  | null liste = liste
  | otherwise = (umdrehen (tail liste)) ++ [(head liste)]

--import Data.Fixed
potenz x n -- x^n; x ∈ R; n ∈ N
  | n == 0 = 0
  | n == 1 = x
  | n > 0 = x * (potenz x (n-1))
  | n < 0 = 1 / (x * (potenz x ((-n)-1)))
--  | not (mod n 1) == 1 = x^((read (tail (tail (show 0.75)))/100) ::Int)


test = [1..16]
aTest = [1,2,3,4,5,6,7]
bTest = ['a','b','c','d','e']

-- RETIRED
zweites liste
  | null liste = 0
  | tail liste == [] = 0
  | otherwise = head (tail liste)

drittes liste
  | null liste = 0
  | tail (tail liste) == [] = 0
  | otherwise = head (tail (tail liste))

viertes liste
  | null liste = 0
  | tail (tail (tail liste)) == [] = 0
  | otherwise = head (tail (tail (tail liste)))
