with Dates, Tools, ANSI, ada.text_io;
use  Dates, Tools, ANSI, ada.text_io;

Package body GestionAdherent is

    Procedure Get (Contrat: out T_Contrat) is
        s: string (1..3);
        k: integer;
    begin
        loop
            get_line (s, k);
            exit when s(1..k) in "F"|"A"|"FA";
            put_line ("Type de Contrat inconnu. Veuillez recommencer.");
        end loop;
        Contrat := T_Contrat'value (s(1..k));
    end Get;

    Procedure Put (Contrat: T_Contrat) is
    begin
        put (T_Contrat'image(Contrat));
    end Put;

    Procedure Put (Creneau: T_Creneau) is
    begin
        Put (T_Creneau'image(Creneau)(2..12));
    end Put;

    Procedure Get (Adherent: out T_Adherent) is
    begin
        Put_line ("Nom               : "); 
        Put_line ("Prenom            : "); 
        Put_line ("Date de Naissance : ");
        Put      ("Type de Contrat   : "); 
        moveCursor (Up, 3);     sGet (Adherent.Prenom);
        moveCursor (right, 20); sGet (Adherent.Nom);
        moveCursor (right, 20); Get  (Adherent.DateNaissance);
        moveCursor (right, 20); Get  (Adherent.Contrat);
        --Put ("Date ");Get (Adherent.DateContrat); ou bien Adherent.DateContrat := clock;
    end Get;

    Procedure Put (Adherent: T_Adherent) is
    begin
        Put ("Nom               : "); Put (Only(Adherent.Prenom));       new_line;
        Put ("Prenom            : "); Put (Only(Adherent.Nom));          new_line;
        Put ("Date de Naissance : "); Put      (Adherent.DateNaissance); new_line;
        Put ("Debut du Contrat  : "); Put      (Adherent.DateContrat);   new_line;
        Put ("Nombre de Seances : "); Put (Only(Adherent.NbSeance));     new_line;
        Put ("Type de Contrat   : "); Put      (Adherent.Contrat);       new_line;
    end Put;

end GestionAdherent;

