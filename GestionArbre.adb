Package body GestionArbre is

-- Si l'arbre est nul, on place le pointeur au sommet.
-- Sinon on compare le noms contenu dans le noeud a celui du pointeur a ajouter.
-- A chaque fois que l'on a comparé le nom a celui du noeud, on regarde
--  si la branche inférieure est vide. Si elle est vide on y met le pointeur
-- Si elle n'est pas vide on continue a descendre.

    Procedure Add (PtrAdh: T_PtrAdh; Node: in out T_NodeAdh) is
        AdhName : string (1..60) := PtrAdh.Val.Nom & PtrAdh.Val.Prenom;
        NodeName: string (1..60);
    begin
        if Node = null then
            Node := New T_TreeAdh'(PtrAdh, null, null);
        else
            NodeName := Node.Adh.Val.Nom & Node.Adh.Val.Prenom;
            if AdhName < NodeName then
                if Node.L = null then
                    Node.L := New T_TreeAdh'(PtrAdh, null, null);
                else
                    Add (PtrAdh, Node.L);
                end if;
            elsif AdhName > NodeName then
                if Node.R = null then
                    Node.R := New T_TreeAdh'(PtrAdh, null, null);
                else
                    Add (PtrAdh, Node.R);
                end if;
            else
                Node.R := new T_TreeAdh'(PtrAdh, null, Node.R);
            end if;
        end if;
    end Add;


-- Pour supprimer un noeud de l'arbre en conservant tout le reste:
-- On prend la branche droite du noeud et on la met a l'extremité
--  droite de la branche gauche du noeud.
-- Ensuite, on remplace le noeud a supprimer par sa branche gauche.

    Procedure Remove (Node: in out T_NodeAdh) is
        Procedure Append (Node, Tree : T_NodeAdh) is
        begin
            if Tree.R = null then
                Tree.R := Node;
            else
                Append (Node, Tree.R);
            end if;
        end Append;
    begin
        if Node.R /= null then
            Append (Node.R, Node.L);
        end if;
        Node := Node.L;
    end Remove;

    Procedure Display (Node: T_NodeAdh) is
    begin
        if Node /= null then
            Put     (Node.Adh.Val);
            Display (Node.L);
            Display (Node.R);
        end if;
    end Display;

end GestionArbre;