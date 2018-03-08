With Ada.Calendar, Gnat.Calendar;
Use  Ada.Calendar, Gnat.Calendar;

Package GestionAdherent is

    Subtype Mot30 is String (1..30);

    Type T_Contrat IS (
        F,
        A,
        FA
    );

    Type T_Semaine IS (
        Lundi,
        Mardi,
        Mercredi,
        Jeudi,
        Vendredi,
        Samedi
    );

    Type T_Creneau IS (
        c09h00_10h00,
        c10h00_11h00,
        c12h30_13h30,
        c17h30_18h30,
        c18h30_19h30,
        c19h30_20h30
    );

    Type T_PlanningPerso IS ARRAY (T_Semaine'RANGE, T_Creneau'RANGE) OF T_Contrat;

    Type T_Adherent is 
        record
            Nom          : Mot30 := (others => ' ');
            Prenom       : Mot30 := (others => ' ');
            DateNaissance: Time  := No_Time;
            DateContrat  : Time  := No_Time;
            NbSeance     : Natural := 0;
            Contrat      : T_Contrat := FA;
            Planning     : T_PlanningPerso := (others => (others => A));
            PlanningSuiv : T_PlanningPerso;
        end record;

    Procedure Get   (Contrat : out T_Contrat);
    Procedure Put   (Contrat : in  T_Contrat);

    Procedure Put   (Creneau : in  T_Creneau) ;

    Procedure Get   (Adherent: out T_Adherent);
    Procedure Put   (Adherent: in  T_Adherent);

end GestionAdherent;
