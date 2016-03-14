module Util =
struct
let int_to_char = function
  | 0 -> 'a'
  | 1 -> 'b'
  | 2 -> 'c'
  | 3 -> 'd'
  | 4 -> 'e'
  | 5 -> 'f'
  | 6 -> 'g'
  | 7 -> 'h'
  | 8 -> 'i'
  | 9 -> 'j'
  | 10 -> 'k'
  | 11 -> 'l'
  | 12 -> 'm'
  | 13 -> 'n'
  | 14 -> 'o'
  | 15 -> 'p'
  | 16 -> 'q'
  | 17 -> 'r'
  | 18 -> 's'
  | 19 -> 't'
  | 20 -> 'u'
  | 21 -> 'v'
  | 22 -> 'w'
  | 23 -> 'x'
  | 24 -> 'y'
  | 25 -> 'z'

  let rec alea_int long max l = match long with
    | 0 -> l
    | n -> (alea_int n-1 max (Random.int max)::l)

  let gen_liste_aleatoire long max = alea_int long max []

end
