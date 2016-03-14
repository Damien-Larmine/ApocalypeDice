module Arbre =
struct
  type 'a t = Node of 'a * 'a t list
  let rec rec_num_node arbre c = match arbre with
    |Node(x,[]) -> Node((x,c),[])
    |Node(x,l) -> Node((x,c), (rec_num_node l c+1))

  let numerote_noeud arbre = rec_num_node arbre 0

end
