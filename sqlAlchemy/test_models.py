# Testons nos models SQLAlchemy pour vérifier qu'ils fonctionnent correctement.

# La commande # %% permet d'exécuter le code dans un environnement interactif comme Jupyter Notebook.
# %%
from database import SessionLocal
from models import ClientDim, CommandeDim, ProduitDim, VenteFait

db = SessionLocal()

# %%
# Tester la récupération de quelques ventes
ventes = db.query(VenteFait).limit(5).all()

for vente in ventes:
    print(f"ID Commande : {vente.id_commande}, ID Client : {vente.id_client}, ID Produit : {vente.id_produit}, Quantité Totale : {vente.quantite_totale}, Vente Totale : {vente.vente_totale}")

# %%
# Tester la récupération de quelques clients
clients = db.query(ClientDim).limit(5).all() 
for client in clients:
    print(f"ID Client : {client.id_client}, Nom : {client.nom}, Prénom : {client.prenom}, Email : {client.email}, Telephone : {client.telephone}, Adresse : {client.adresse}")

# %%
# Tester la récupération de quelques produits
produits = db.query(ProduitDim).limit(5).all()
for produit in produits:
    print(f"ID Produit : {produit.id_produit}, Nom : {produit.nom}, Catégorie : {produit.categorie}")

# %%
# Tester la récupération de quelques commandes
commandes = db.query(CommandeDim).limit(5).all()
for commande in commandes:
    print(f"ID Commande : {commande.id_commande}, Date Commande : {commande.date_commande}, Statut : {commande.statut}")

# %%
# # Tester la récupération des ventes avec les relations
ventes = db.query(VenteFait).join(ClientDim).join(ProduitDim).join(CommandeDim).limit(5).all()
for vente in ventes:
    print(f"ID Commande : {vente.id_commande}, Client : {vente.client.nom} {vente.client.prenom}, Produit : {vente.produit.nom}, Quantité Totale : {vente.quantite_totale}, Vente Totale : {vente.vente_totale}")


# %%
# Tester les ventes dont le client est un homme
ventes_hommes = (
    db.query(VenteFait.quantite_totale, ClientDim.nom, ClientDim.prenom)
    .join(ClientDim, VenteFait.id_client == ClientDim.id_client)
    .filter(ClientDim.gender == "Male")
    .limit(5)
    .all()
)
# Afficher les ventes des hommes
for vente in ventes_hommes:
    print(f"Quantité Totale : {vente.quantite_totale}, Client : {vente.nom} {vente.prenom}")

# %%
# Fermer la session de base de données
db.close()
