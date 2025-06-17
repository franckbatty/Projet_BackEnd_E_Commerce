# Tester les fonctions d'aide pour l'API RESTful

from database import SessionLocal
from query_helpers import *




# Créer une session
db = SessionLocal()

# Tester la recuperation d'une vente
#vente = get_vente(db, id_commande=9, id_client=9, id_produit=9)
#print(f"Vente trouvée : ID Commande : {vente.id_commande}, ID Client : {vente.id_client}, ID Produit : {vente.id_produit}, Quantité Totale : {vente.quantite_totale}, Vente Totale : {vente.vente_totale}")

# Tester la récupération de plusieurs ventes
#ventes = get_ventes(db, skip=0, limit=5)
#for vente in ventes:
#    print(f"ID Commande : {vente.id_commande}, ID Client : {vente.id_client}, ID Produit : {vente.id_produit}, Quantité Totale : {vente.quantite_totale}, Vente Totale : {vente.vente_totale}")

# Tester la récupération d'un client
#client = get_client(db, id_client=1)
#print(f"Client trouvé : ID Client : {client.id_client}, Nom : {client.nom}, Prénom : {client.prenom}, Email : {client.email}, Téléphone : {client.telephone}, Adresse : {client.adresse}")

# Tester la récupération de plusieurs clients
#clients = get_clients(db, skip=0, limit=5)
#for client in clients:
#    print(f"ID Client : {client.id_client}, Nom : {client.nom}, Prénom : {client.prenom}, Email : {client.email}, Téléphone : {client.telephone}, Adresse : {client.adresse}")


# Tester la récupération d'un produit
#produit = get_produit(db, id_produit=9)
#print(f"Produit trouvé : ID Produit : {produit.id_produit}, Nom : {produit.nom}, Catégorie : {produit.categorie}")

# Tester la récupération de plusieurs produits
#produits = get_produits(db, skip=0, limit=5)
#for produit in produits:
#    print(f"ID Produit : {produit.id_produit}, Nom : {produit.nom}, Catégorie : {produit.categorie}")

# Tester la récupération d'une commande
#commande = get_commande(db, id_commande=9)
#print(f"Commande trouvée : ID Commande : {commande.id_commande}, Date Commande : {commande.date_commande}, Statut : {commande.statut}")

# Tester la récupération de plusieurs commandes
#commandes = get_commandes(db, skip=0, limit=5)
#for commande in commandes: 
#    print(f"ID Commande : {commande.id_commande}, Date Commande : {commande.date_commande}, Statut : {commande.statut}")

#

# Appels des fonctions Analytics
total_ventes = get_total_ventes(db)
total_clients = get_total_clients(db)
total_produits = get_total_produits(db)
total_commandes = get_total_commandes(db)

# Affichage
print(f"Nombre total de ventes : {total_ventes}")
print(f"Nombre total de clients : {total_clients}")
print(f"Nombre total de produits : {total_produits}")
print(f"Nombre total de commandes : {total_commandes}")

# Fermeture propre de la session
#db.close()