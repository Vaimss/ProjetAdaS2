with ada.text_io;
use  ada.text_io;

Package body GestionListe is

    Procedure Add (Adh : T_Adherent; Pile : in out T_PtrAdh) is
        NewHead : T_PtrAdh := new T_CellAdh'(Adh, Pile);
    begin
        Pile := NewHead;
    end Add;

    Procedure Display (List: T_PtrAdh) is
    begin
        if List /= null then
            Put     (List.Val);
            Display (List.Suiv);
        end if;
    end Display;

    Procedure Display (Plan: T_PlanningPerso) is
    begin
        Put_line ("           |   Lundi  |   Mardi  | Mercredi |   Jeudi  | Vendredi |  Samedi  ");
        for i in T_Creneau'range loop
            Put (i);
            for j in T_Semaine'range loop
                Put (case Plan (j,i) is when F  => "  Fitness  ",
                                        when A  => "    Aqua   ",
                                        when FA => "           ");
            end loop;
            new_line;
        end loop;
    end Display;

end GestionListe;
