module Util :
sig
(*transforme 0 en 'a', 1 en 'b', etc...*)
val int_to_char : int -> char

(*gen_liste_aleatoire long max*)
(*genere une liste aleatoire d'entiers inferieurs ou egaux a max*)
(*de longueur long*)
val gen_lite_aleatore : int -> int -> int list
end
