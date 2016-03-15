module Arbre =
struct
  type 'a t = Node of 'a * 'a t list

  let numerote_noeud arbre =
      let rec rec_num_node arbre c  = match arbre with
	|Node(x,[]) -> ( Node((x,c),[]), c+1)
	|Node(x,l) -> let (list,n)=(List.fold_left (fun acc e -> rec_num_node e (fst acc) ) ([],c) l) in
		      ((Node(x,n),list),n+1)
      in rec_num_node arbre 0    
  
end
