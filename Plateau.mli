module Plateau : sig
  type t

  (* gen_plateau dim njoueurs ndes*)
  (* renvoie un plateau de dim*dim cases *)
  (* chaque case appartien aléatoirement à un joueur *)
  (*et contien aléatoirement entre 0 et ndes au maximum par case *)
  val gen_plateau : int -> int -> int -> t

  val to_string : t -> string
  val print : t -> unit

  (* voisins dim pos renvoie la liste des positions voisines de la case
     numero pos sur un plateau de dim*dim cases.
     attention aux cases au bord du plateau*)
  val voisins : int -> int -> int list

  (* cases_avec_pos p renvoie la listes des cases du plateau p numerotées*)
  val cases_avec_pos : t -> (int*case) list

  (* cases_avec_pos p j renvoie comme précédemment, mais uniquement
     pour les cases appartenant au joueur j*)
  val cases_avec_pos_joueur : t -> Joueur.t -> (int*case) list

  (* attaque_possible p pos1 pos2 renvoie vrai si l'attaque est possible *)
  (* on vérifiera seulement que les cases appartiennent à des joueur différents *)
  (* et qu'il y a plus de des sur la case  pos1 que sur la case pos2*)
  val attaque_possible : t -> int -> int -> bool

  val joueur_suivant : t -> Joueur.t -> Joueur.t
end
