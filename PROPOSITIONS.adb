Package body Propositions is
--------------------------------------------------------------------------------------

    -- Sinon, de toute façon aucun utilisateur a envie de taper 10h30_11h30 Pour
    -- choisir son creneau; Il veut taper 1, 2, 3... pour choisir rapidement
    -- Dans ce cas, pour choisir il aura juste a saisir un charactere (entre 1 et 6).
    -- A chaque fois qu'on veut afficher un creneau, on aura juste a utiliser:

    Creneau_Hash_Tab : array (character range '1'..'6') of string (1..13) :=(
        '1' => "09h00 - 10h00",
        '2' => "10h00 - 11h00",
        '3' => "12h30 - 13h30",
        '4' => "17h30 - 18h30",
        '5' => "18h30 - 19h30",
        '6' => "19h30 - 20h30" 
    );

    Procedure PutCreneau (i: character) is
    begin
        Put (Creneau_Hash_Tab(i));
    end PutCreneau;

    -- Avantages:
    --     Evite de creer un nouveau type 
    --          (et de toute façon il fallait une procedure d'affichage)
    --     Economie de mémoire
    --     Moins chiant pour l'utilisateur
    --     Plus facile de vérifier les erreurs de saisie
    --     Moins chiant a manipuler en général

--------------------------------------------------------------------------------------
end Propositions;