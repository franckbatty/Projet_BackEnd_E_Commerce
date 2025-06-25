
#%%
from e_commerce_franck_sdk import E_commerceClient, E_commerceConfig

# Initialisation du client avec l'URL de l'API
config = E_commerceConfig(e_commerce_base_url="https://projet-backend-e-commerce-1.onrender.com")
# Instancier le client
client = E_commerceClient(config=config)

# Tester l’état de santé de l’API
print("Health check :", client.health_check())

#%%
# Récupère une vente spécifique à partir d’un triple ID.
vente = client.get_vente(id_commande=9, id_client=9, id_produit=9)
print("Vente récupérée :", vente)

#%%
# Récupère la Liste des ventes avec pagination et filtres.
# je peux ou ne pas passer le param limit=, par defaut il retourne 100 ligne.
#ventes = client.list_ventes(limit=20, output_format="pandas")
ventes = client.list_ventes(output_format="pandas")
print(ventes)

#%%
# Je peux aussi utiliser les methodes de pandas
# Afficher les 5 premieres lignes
print(ventes.head())
# Afficher les colonnes 
print(ventes.columns)
# 
print(ventes.describe())

#%%
# Récupère un client par son ID.
client1 = client.get_client(id_client=9)
print(client1)

#%%
# Liste les clients avec pagination et possibilité de filtrer par nom et prénom.
clients = client.list_clients(output_format="pandas")
print("Listes des clients :")
print(clients)

#%%
# Récupère un produit par son ID.
produit = client.get_produit(id_produit=9)
print(produit)

#%%
# Liste les produits avec pagination et filtres (nom, catégorie).
produits = client.list_produits(output_format="pandas")
#print(produits)
#print(produits["categorie"].unique())
print(produits[produits["categorie"]=="Cuisine"])

#%%
# Récupère une commande par son ID.
commande = client.get_commande(id_commande=1)
print(commande)

#%%
# Liste les commandes avec pagination et filtres (date, statut).
commandes = client.list_commandes(output_format="pandas")
#print(commandes)
#print(commandes.head())
print(commandes.tail())

#%%
# Récupère les statistiques globales (total clients, ventes, etc.).
statistique = client.get_analytics()











# %%
