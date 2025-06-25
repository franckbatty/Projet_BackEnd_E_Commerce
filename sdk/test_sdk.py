
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

ventes = client.list_ventes(skip=0, limit=10)
for v in ventes:
    print("🧾 Vente :", v)









# %%
