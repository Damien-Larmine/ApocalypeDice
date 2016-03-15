module Plateau = struct
  type t = {taille : int;
            max_des : int;
            num_joueurs : int;
            cases : case list;
            des_captures : int
           }
  and case = {joueur: Joueur.t; des:int}

  open Joueur

  let plateau_test =
  {
    taille = 2;
    max_des = 3;
    num_joueurs = 2;
    cases = [{joueur = Joueur 1; des = 2};
             {joueur = Joueur 1; des = 2};
             {joueur = Joueur 0; des = 2};
             {joueur = Joueur 1; des = 1};];
    des_captures = 0
  }

  let gen_plateau dim joueurs ndes =
    {
      taille = 2;
      max_des = ndes;
      num_joueurs = joueurs;
      cases
    }
end
