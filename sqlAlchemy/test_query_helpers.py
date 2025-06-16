# Tester les fonctions d'aide pour l'API RESTful
# Importation des modules nécessaires
#%%
from database import SessionLocal
from query_helpers import *

# Créer une session
db = SessionLocal()
# %%
# Tester la récupération d'une vente
vente = get_vente(db, id_commande=1, id_client=1, id_produit=1)
for v in vente:
    print(f"ID Commande : {v.id_commande}, ID Client : {v.id_client}, ID Produit : {v.id_produit}, Quantité Totale : {v.quantite_totale}, Vente Totale : {v.vente_totale}")