# Developement de l'API FastAPI pour l'E-Commerce

# Importation des modules nécessaires
from fastapi import FastAPI, Depends, HTTPException, Query, Path 
from sqlalchemy.orm import Session 
from typing import List, Optional
from database import SessionLocal
import query_helpers as helpers 
import schemas 

api_description = """ 
Bienvenue dans l'API E-commerce 

Cette API RESTful expose les données analytiques issues d’un entrepôt e-commerce structuré (couche Gold) 
à des fins de reporting, d’exploration ou d’intégration front.

Inspirée des bonnes pratiques modernes, elle permet d’interroger les ventes, les clients, les produits, les commandes 
ainsi que des statistiques consolidées, à travers des endpoints simples, documentés, et 100 % en lecture seule.

### Fonctionnalités disponibles :

- Rechercher une vente par ID commande, ID client, et ID produit
- Lister toutes les ventes avec filtres (id_client, id_produit, id_commande.)
- Lister un ou plusieurs clients
- Lister un produit ou plusieurs produits et leurs catégories
- Lister une ou plusieurs commandes 
- Voir des statistiques globales sur la base

Tous les endpoints supportent la pagination (`skip`, `limit`) et des filtres optionnels selon les cas.

### Bon à savoir
- Vous pouvez tester tous les endpoints directement via l'interface Swagger "/docs".
- Pour toute erreur (ex : ID inexistant), une réponse claire est retournée avec le bon code HTTP.

"""

# --- Initialisation de l'application FastAPI ---
app = FastAPI(
    title="E_commerce API", # 
    description = api_description,
    version = "0.1"
)

# --- Dépendance pour la session de base de données ---
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()

# Endpoint pour tester la santé de l'API
@app.get(
    "/",
    summary="Vérification de la santé de l'API",
    description="Vérifie que l'API fonctionne correctement.",
    response_description="Statut de l'API",
    operation_id="health_check_e_commerce_api",
    tags=["monitoring"]
)

async def root():
    return {"message": "API E_commerce opérationnelle"}

# Endpoint pour obtenir une vente par son ID de commande, ID de client et ID de produit.
@app.get(
    "/vente/{id_commande}/{id_client}/{id_produit}",  # Ex: /ventes/9/9/9
    summary="Obtenir une vente par triple ID",
    description="Retourne une vente spécifique à partir de l’ID commande, ID client et ID produit.",
    response_description="Détails de la vente",
    response_model=schemas.VenteFaitBase, # retourne une ligne
    tags=["vente"]
)
def lire_vente(id_commande: int,id_client: int,id_produit: int,db: Session = Depends(get_db)):
    vente = helpers.get_vente(db, id_commande, id_client, id_produit)
    if not vente:
        raise HTTPException(status_code=404, detail="Vente introuvable.")
    return vente

# Endpoint pour obtenir la liste de vente.
@app.get(
    "/ventes",  
    summary="Lister les ventes",
    description="Retourne une liste de vente.",
    response_description="Liste de vente",
    response_model=List[schemas.VenteFaitBase], # retourne une liste
    tags=["ventes"],
)
def liste_ventes( 
    skip: int = Query(0, ge=0, description="Nombre de résultats à ignorer"),
    limit: int = Query(100, le=1000, description="Nombre maximal de résultats à retourner"), 
    id_commande: int = Query(None, description="Filtre par id commande"), 
    id_client: int = Query(None, description="Filtre par id client"),
    id_produit: int = Query(None, description="Filtre par id produit"),
    db: Session = Depends(get_db)
):
    ventes = helpers.get_ventes(db, skip=skip, limit=limit, id_commande=id_commande, id_client=id_client,id_produit=id_produit)
    return ventes

# Endpoint pour obtenir un client par son ID.
@app.get(
    "/client/{id_client}",  # Ex: /client/9
    summary="Obtenir un client par son ID",
    description="Retourne un client spécifique à partir de l’ID client.",
    response_description="Détails du client",
    response_model=schemas.ClientDimBase, # retourne une ligne
    tags=["client"]
)
def lire_client(id_client: int, db: Session = Depends(get_db)):
    client = helpers.get_client(db, id_client)
    if not client:
        raise HTTPException(status_code=404, detail="Client introuvable.")
    return client

# Endpoint pour obtenir la liste des clients.
@app.get(
    "/clients",  
    summary="Lister les clients",
    description="Retourne une liste de client.",
    response_description="Liste de client",
    response_model=List[schemas.ClientDimBase], # retourne une liste
    tags=["clients"],
)
def liste_clients( 
    skip: int = Query(0, ge=0, description="Nombre de résultats à ignorer"),
    limit: int = Query(100, le=1000, description="Nombre maximal de résultats à retourner"), 
    nom: str = Query(None, description="Filtre par nom"), 
    prenom: str = Query(None, description="Filtre par prenom"),
    db: Session = Depends(get_db)
):
    clients = helpers.get_clients(db, skip=skip, limit=limit, nom=nom, prenom=prenom)
    return clients

# Endpoint pour obtenir un produit par son ID
@app.get(
    "/produit/{id_produit}",  # Ex: /produit/9
    summary="Obtenir un produit par son ID",
    description="Retourne un produit spécifique à partir de l’ID produit.",
    response_description="Détails du produit",
    response_model=schemas.ProduitDimBase, # retourne une ligne
    tags=["produit"]
)
def lire_produit(id_produit: int, db: Session = Depends(get_db)):
    produit = helpers.get_produit(db, id_produit)
    if not produit:
        raise HTTPException(status_code=404, detail="produit introuvable.")
    return produit

# Endpoint pour obtenir la liste des produits 
@app.get(
    "/produits",  
    summary="Obtenir la liste de produit",
    description="Retourne la liste de produit.",
    response_description="Détails des produits",
    response_model=List[schemas.ProduitDimBase], # retourne une ligne
    tags=["produits"]
)
def liste_produits( 
    skip: int = Query(0, ge=0, description="Nombre de résultats à ignorer"),
    limit: int = Query(100, le=1000, description="Nombre maximal de résultats à retourner"), 
    nom: str = Query(None, description="Filtre par le nom du produit"), 
    categorie: str = Query(None, description="Filtre par la categorie du produit"),
    db: Session = Depends(get_db)
):
    produits = helpers.get_produits(db, skip=skip, limit=limit, nom=nom, categorie=categorie)
    return produits 

# Endpoint pour obtenir une commande par son ID.
@app.get(
    "/commande/{id_commande}",  # Ex: /commande/9
    summary="Obtenir une comande par son ID",
    description="Retourne une commande spécifique à partir de l’ID commande.",
    response_description="Détails de la commande",
    response_model=schemas.CommandeDimBase, # retourne une ligne
    tags=["commande"]
)
def lire_commande(id_commande: int, db: Session = Depends(get_db)):
    commande = helpers.get_commande(db, id_commande)
    if not commande:
        raise HTTPException(status_code=404, detail="commande introuvable.")
    return commande

# Endpoint pour obtenir la liste de commande.
@app.get(
    "/commandes",  
    summary="Obtenir la liste de commandes",
    description="Retourne la liste de commandes.",
    response_description="Détails des commandes",
    response_model=List[schemas.CommandeDimBase], # retourne une ligne
    tags=["commandes"]
)
def liste_commandes( 
    skip: int = Query(0, ge=0, description="Nombre de résultats à ignorer"),
    limit: int = Query(100, le=1000, description="Nombre maximal de résultats à retourner"), 
    date_commande: str = Query(None, description="Filtre par le date de commande"), 
    statut: str = Query(None, description="Filtre par la statut de la commande"),
    db: Session = Depends(get_db)
):
    commandes = helpers.get_commandes(db, skip=skip, limit=limit, date_commande=date_commande, statut=statut)
    return commandes 

# Endpoint pour obtenir des statistiques sur la base de données
@app.get(
    "/analytics",
    summary="Obtenir des statistiques",
    description="""
    Retourne un résumé analytique de la base de données :

    - Nombre total de ventes
    - Nombre total de clients
    - Nombre total de produits
    - Nombre total de commandes
    """,
    response_model=schemas.Analytics,
    tags=["analytics"]
)
def get_analytics(db: Session = Depends(get_db)):
    ventes_count = helpers.get_total_ventes(db)
    clients_count = helpers.get_total_clients(db)
    produits_count = helpers.get_total_produits(db)
    commandes_count = helpers.get_total_commandes(db)

    return schemas.Analytics(
        ventes_count=ventes_count,
        clients_count=clients_count,
        produits_count=produits_count,
        commandes_count=commandes_count
    )