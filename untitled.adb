-- La fonction SubSearch retourne un arbre, mais c'est uniquement pour ne pas avoir
-- a recreer une structure de donnee pour stocker une liste de pointeurs.
-- C'est interessant de stocker les résultats de la recherche sous cette forme car
--      lorsque l'on voudra choisir un seul des resultats de la recherche
--      on aura juste afficher les contenus des pointeurs, et aller a l'adresse
--      de celui qui aura été choisi pour effectuer les modifications

    Function Search (Adh: T_Adherent; Tree: T_NodeAdh) return T_PtrAdh is
        Function SubSearch (Adh: T_Adherent; Tree: T_NodeAdh) return T_NodeAdh is
            AdhName : string (1..60) := Adh.Nom & Adh.Prenom;
            NodeName: string (1..60) := Tree.Adh.Val.Nom & Tree.Adh.Val.Prenom;
        begin
            return (
                if    AdhName > NodeName then SubSearch (Adh, Tree.R)
                elsif AdhName < NodeName then SubSearch (Adh, Tree.L)
                else null);--new T_TreeAdh'(Tree.Adh,SubSearch (Adh, Tree.R))));
        end SubSearch;
    begin
        return (
            if Tree = null then null else
            SubSearch (Adh, Tree).Adh);
    end Search;

