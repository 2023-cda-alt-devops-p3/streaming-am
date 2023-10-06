J'ai 4 TABLES : 
acteur (id, nom, prenom, date_naissance)
realisateur (id, nom, prenom)
utilisateur (id, nom, prenom, email, mdp, role, liste_film_preferes)
film(id, id_acteur, id_realisateur, titre, durée, annee_de_sortie)

/!\ ---> Les titres et dates de sortie des films du plus récent au plus ancien :

SELECT titre, annee_de_sortie FROM film
ORDER BY annee_de_sortie DESC;

/!\ ---> Les noms, prénoms et âges des acteurs/actrices de plus de 30 ans dans l'ordre alphabétique :

SELECT nom, prenom, YEAR(CURRENT_DATE()) - YEAR(date_naissance) AS age
FROM acteur
WHERE YEAR(CURRENT_DATE()) - YEAR(date_naissance) > 30
ORDER BY nom, prenom;

/!\ ---> La liste des acteurs/actrices principaux pour un film donné

SELECT acteur.nom, acteur.prenom
FROM film
JOIN acteur ON film.id_acteur = acteur.id
WHERE film.titre = 'TITRE_FILM_1'; 

-Remplacez 'TITRE_FILM_1' par le titre du film souhaité

/!\ ---> La liste des films pour un acteur/actrice donné

SELECT film.titre, film.annee_de_sortie
FROM film
JOIN acteur ON film.id_acteur = acteur.id
WHERE acteur.nom = 'NOM_ACTEUR_1' AND acteur.prenom = 'PRENOM_ACTEUR_1';

-Remplacez 'NOM_ACTEUR_1 ET 'PRENOM_ACTEUR_1' par les noms de l'acteur souhaités.

/!\ ---> Ajouter un film

INSERT INTO film (id_acteur, id_realisateur, titre, durée, annee_de_sortie)
VALUES (1, 1, Titre AJOUTEE', 'HEURE AJOUTEE', 2023);

-Remplacez '1', '1', 'titre', 'duree', 'annee' par ceux de votre table / choix.


/!\ ---> Ajouter un acteur

INSERT INTO acteur (nom, prenom, date_naissance)
VALUES ('NOM AJOUTEE', 'PRENOM AJOUTEE', '2000/05/05');


/!\ ---> Modifier un film 

UPDATE film
SET titre = 'Nouveau titre du film'
WHERE id = 1;

-Remplacez 'titre' par celui de votre table / choix.

/!\ ---> Supprimer un acteur/actrice 

DELETE FROM acteur
WHERE id = 1;

-Remplacez '1' par l'ID de votre choix.

/!\ ---> Afficher les 3 derniers acteurs/actrices ajouté(e)s :

SELECT *
FROM acteur
ORDER BY id DESC
LIMIT 3;

