lexi = -- [EN, DE]
   [("the",    "die"),
    ("the",     "der"),
    ("a",       "eine"),
    ("of",      "vom"),
    ("in",      "in"),
    ("at",      "bei"),
    ("runs",    "rennt"),
    ("follows", "verfolgt"),
    ("eats",    "frisst"),
    ("barks",   "bellt"),
    ("jumps",   "springt"),
    ("escapes", "entkommt"),
    ("mouse",   "Maus"),
    ("cat",     "Katze"),
    ("dog",     "Hund"),
    ("chair",   "Stuhl"),
    ("kitchen", "Küche")]

uebersetzung satz =
  unwords (satzUebersetzung (words satz) lexi)

wortUebersetzung wort lexikon
  | null lexikon = wort
  | head (head lexikon) == wort = (head lexikon)!!1
  | (head lexikon)!!1 == wort = (head (head lexikon))
  | otherwise = wortUebersetzung wort (tail lexikon)

satzUebersetzung wList lexikon
  | null wList = ["No entry."]
  | null (tail wList) = [wortUebersetzung (head wList) lexikon]
  | otherwise = (wortUebersetzung (head wList) lexikon) : " " : (satzUebersetzung (tail wList) lexikon)
