module Arbre :
sig
  type 'a t = Empty | Node of 'a * 'a t list
  val numerote_noeud : 'a t -> ('a * int) t
end
