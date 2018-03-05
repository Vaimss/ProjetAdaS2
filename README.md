## GestionAdherent

*Subtype* **Mot30**;

*Type* **T_Contrat**;  
*Type* **T_Semaine**;  
*Type* **T_Creneau**;  
*Type* **T_PlanningPerso**;  
*Type* **T_Adherent**;

Statut | Nature      | Nom     | Action      
-------|-------------|---------|-------------
done   | *Procedure* | **Get** | Saisit un contrat 
done   | *Procedure* | **Put** | Affiche un contrat 
done   | *Procedure* | **Put** | Affiche un creneau
done   | *Procedure* | **Get** | Saisit un adherent 
done   | *Procedure* | **Put** | Affiche un adherent

## GestionListe

*Type* **T_CellAdh**;  
*Type* **T_PtrAdh**;

Statut | Nature      | Nom         | Action      
:-----:|-------------|-------------|-------------
done   | *Procedure* | **Add**     | Ajoute un adherent a un un creneau
/      | *Procedure* | **Remove**  | Enleve un adherent d'un creneau
done   | *Procedure* | **Display** | Affiche tous les adherents d'un creneau
done   | *Procedure* | **Display** | Affiche un planning individuel
/      | *Procedure* | **Display** | Affiche l'intégralité du planning

## GestionArbre

*Type* **T_TreeAdh**;  
*Type* **T_NodeAdh**;

Statut | Nature      | Nom         | Action      
:-----:|-------------|-------------|-------------
done   | *Procedure* | **Add**     | Ajoute un pointeur vers adherent a l'ABR
done   | *Procedure* | **Remove**  | Enleve un pointeur vers adherent de l'ABR et replace ses branches
/      | *Function*  | **Search**  | Recherche un adherent dans l'arbre, affiche les resultats, retourne leur nombre, et retourne un pointeurs vers adherent si un seul adherent a été trouvé
done   | *Procedure* | **Display** | Affiche tout l'arbre

## GestionArchive

Statut | Nature      | Nom         | Action      
:-----:|-------------|-------------|-------------
/      | *Procedure* | **Add**     | Ajoute un adherent au fichier d'archive
/      | *Function*  | **Search**  | Recherche un adherent dans l'archive et affiche les resultats

## GestionPrincipale

Statut | Nature      | Nom                   | Action      
:-----:|-------------|-----------------------|-------------
/      | *Procedure* | **NewAdherent**       | Saisit puis ajoute un adherent
/      | *Procedure* | **NewReservation**    | Pour un adherent, choisit un creneau puis l'ajoute
/      | *Procedure* | **CancelReservation** | Pour un adherent, choisit un creneau puis le supprime
/      | *Procedure* | **NextDay**           | Passe au jour suivant, actualise les contrats (et les plannings si dimanche)
/      | *Procedure* | **Save**              | Sauvegarde la liste des adherents, leurs infos et le planning general
/      | *Procedure* | **Restore**           | Restore la liste des adherents et des infos, et le planning general
