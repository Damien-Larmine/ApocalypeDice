module Arbre :
sig
  type 'a t = Node of 'a * 'a tree list
  val numerote_noeud : 'a t -> ('a * int) t
end
