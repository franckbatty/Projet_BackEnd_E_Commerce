# E_commerce API

Bienvenue dans l’API **E_commerce** une API RESTful développée avec **FastAPI** pour explorer les données de la couche Gold. Elle vous permet d'interroger des informations sur les clients, les produits, les commandes,  et les ventes vers les tables de vues de la couche Gold.

## Fonctionnalités principales

- Rechercher une vente par ID commande, ID client, et ID produit
- Lister toutes les ventes avec filtres (id_client, id_produit, id_commande.)
- Lister un ou plusieurs clients
- Lister un produit ou plusieurs produits et leurs catégories
- Lister une ou plusieurs commandes
- Voir des statistiques globales sur la base 

---

## Prérequis

- Python ≥ 3.10.9


## Démarrer avec l'API

L'API est accessible à l'adresse suivante :

```
http://localhost:8000
```

L'interface Swagger est disponible ici :

```
http://localhost:8000/docs

```

## Endpoints essentiels

| Méthode | URL                                             | Description |
|--------|--------------------------------------------------|-------------|
| GET    | `/`                                              | Vérifie le bon fonctionnement de l’API |
| GET    | `/ventes`                                        | Liste paginée des ventes avec filtres |
| GET    | `/ventes/{id_commande}{id_client}{id_produit}`   | Détail d’une vente |
| GET    | `/clients`                                       | Liste paginée des clients |
| GET    | `/clients/{id_client}`                           | Détail d'un client  |
| GET    | `/produits`                                      | Liste paginée des produits |
| GET    | `/produit/{id_produit}`                          | Détail d'un produit |
| GET    | `/commande`                                      | Liste des commandes |
| GET    | `/commande/{id_commande}`                        | Détail d'une commande |
| GET    | `/analytics`                                     | Statistiques de la base |

---

## Conditions d'utilisation

- Cette API est conçue à des fins pédagogiques et expérimentales.
- Merci de ne pas effectuer d'appels massifs sans contrôle de fréquence (rate-limiting qui est une technique utilisée pour controler le nombre de requetes qu'un utilisateur peut envoyer à l'API en un laps de temps données. Non implémenté pour l’instant).
- Vous pouvez l’intégrer à des notebooks, applications ou projets de dataviz pour visualiser les données de la couche Gold de E_commerce.

---

## Contribuer

Les contributions sont les bienvenues !

- Corriger des bugs
- Améliorer les performances des requêtes
- Ajouter de nouveaux endpoints
- Rendre l’API disponible sur un hébergeur public

---

## Ressources utiles

- Swagger UI : [http://localhost:8000/docs](http://localhost:8000/docs)
- Documentation technique : disponible via Swagger

---

## Software Development Kit (SDK)



---

## URL publique (Cloud) de l'API

[API E_commerce sur Render](https://movie-backend-xelv.onrender.com)

## Auteur

Développé par [Franck BATTY ](https://www.linkedin.com/in/franckbatty/) en FastAPI.

---