module Arbre =
struct
  type 'a t = Node of 'a * 'a t list
  let rec rec_num_node arbre c = match arbre with
    |Node(x,[]) -> Node((x,c),[])
    |Node(x,h::t) -> Node((x,c),((rec_num_node h c+1)::t))

  let numerote_noeud arbre = rec_num_node arbre 0

end
