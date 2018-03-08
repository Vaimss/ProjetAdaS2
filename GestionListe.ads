With GestionAdherent;
Use  GestionAdherent;

Package GestionListe is

    Type T_CellAdh;
    Type T_PtrAdh is access T_CellAdh;
    Type T_CellAdh is 
        record
            Val: T_Adherent;
            Suiv: T_PtrAdh;
        end record;

    Type T_PlanningCell is 
        record
            Liste : T_PtrAdh;
            Taille: Natural;
        end record;

    Type T_Planning  IS ARRAY (T_Semaine'RANGE, T_Creneau'RANGE) OF T_PlanningCell;

    Procedure Add     (Adh  : T_Adherent;
                       Pile : in out T_PtrAdh);
    
    Procedure Display (List : T_PtrAdh);

    Procedure Display (Plan: T_PlanningPerso);

end GestionListe;
