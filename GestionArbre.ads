with GestionAdherent, GestionListe;
use  GestionAdherent, GestionListe;

Package GestionArbre is

    Type T_TreeAdh;
    Type T_NodeAdh IS ACCESS T_TreeAdh;
    Type T_TreeAdh is record
        Adh   : T_PtrAdh  := null;
        L,
        R     : T_NodeAdh := null;
    end record;

    Procedure Add    (PtrAdh: in     T_PtrAdh;
                      Node  : in out T_NodeAdh);

    Procedure Remove  (Node : in out T_NodeAdh);

    Procedure Display (Node : in     T_NodeAdh);

end GestionArbre;