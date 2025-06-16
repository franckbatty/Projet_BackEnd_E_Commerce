## == API Restful pour l'E-commerce == ##
# Developpement des fonctions d'aide pour mon API RESTful

# Importation des modules nécessaires
from sqlalchemy.orm import Session # pour interagir avec la base de données
from sqlalchemy.orm import joinedload # permet de charger les relations en une seule requête pour éviter les requêtes N+1
from typing import Optional # pour les types optionnels c'est-à-dire les paramètres qui peuvent être None

import models

# --- Ventes ---
# Récupère une vente par son ID de commande, ID de client et ID de produit.
def get_vente(db: Session, id_commande: int, id_client: int, id_produit: int):
    """Récupère une vente par son ID de commande, ID de client et ID de produit."""
    return db.query(models.VenteFait).filter(
        models.VenteFait.id_commande == id_commande,
        models.VenteFait.id_client == id_client,
        models.VenteFait.id_produit == id_produit
    ).first()

# Récupère une liste de ventes avec des filtres optionnels.
def get_ventes(
    db: Session, 
    skip: int = 0, # pour ignorer les premiers enregistrements,
    limit: int = 100, 
    id_commande: Optional[int] = None, 
    id_client: Optional[int] = None, 
    id_produit: Optional[int] = None
): # Optional permet de spécifier que ces paramètres peuvent être None
    """Récupère une liste de ventes avec des filtres optionnels."""
    query = db.query(models.VenteFait).options(
        joinedload(models.VenteFait.client),
        joinedload(models.VenteFait.produit),
        joinedload(models.VenteFait.commande)
    ) # joinedload permet de charger les relations en une seule requête pour éviter les requêtes N+1
    
    if id_commande:
        query = query.filter(models.VenteFait.id_commande == id_commande)
    if id_client:
        query = query.filter(models.VenteFait.id_client == id_client)
    if id_produit:
        query = query.filter(models.VenteFait.id_produit == id_produit)
    
    return query.offset(skip).limit(limit).all() 
    # offset(skip) permet de sauter les premiers enregistrements


# Table de Dimension : Client
# Récupère un client par son ID.
def get_client(db: Session, id_client: int):
    """Récupère un client par son ID."""
    return db.query(models.ClientDim).filter(models.ClientDim.id_client == id_client).first()

# Récupère une liste de clients avec des filtres optionnels.
def get_clients(
    db: Session, 
    skip: int = 0, 
    limit: int = 100, 
    nom: Optional[str] = None, 
    prenom: Optional[str] = None
):
    """Récupère une liste de clients avec des filtres optionnels."""
    query = db.query(models.ClientDim)
    
    if nom:
        query = query.filter(models.ClientDim.nom.ilike(f"%{nom}%"))
    if prenom:
        query = query.filter(models.ClientDim.prenom.ilike(f"%{prenom}%"))
    
    return query.offset(skip).limit(limit).all()

# Table de Dimension : Produit
# Récupère un produit par son ID.
def get_produit(db: Session, id_produit: int):
    """Récupère un produit par son ID."""
    return db.query(models.ProduitDim).filter(models.ProduitDim.id_produit == id_produit).first()

# Récupère une liste de produits avec des filtres optionnels.
def get_produits(
    db: Session, 
    skip: int = 0, 
    limit: int = 100, 
    nom: Optional[str] = None, 
    categorie: Optional[str] = None
):
    """Récupère une liste de produits avec des filtres optionnels."""
    query = db.query(models.ProduitDim)
    
    if nom:
        query = query.filter(models.ProduitDim.nom.ilike(f"%{nom}%"))
    if categorie:
        query = query.filter(models.ProduitDim.categorie.ilike(f"%{categorie}%"))
    
    return query.offset(skip).limit(limit).all()

# Table de Dimension : Commande
# Récupère une commande par son ID.
def get_commande(db: Session, id_commande: int):
    """Récupère une commande par son ID."""
    return db.query(models.CommandeDim).filter(models.CommandeDim.id_commande == id_commande).first()

# Récupère une liste de commandes avec des filtres optionnels.
def get_commandes(
    db: Session, 
    skip: int = 0, 
    limit: int = 100, 
    date_commande: Optional[str] = None, 
    statut: Optional[str] = None
):
    """Récupère une liste de commandes avec des filtres optionnels."""
    query = db.query(models.CommandeDim)
    
    if date_commande:
        query = query.filter(models.CommandeDim.date_commande == date_commande)
    if statut:
        query = query.filter(models.CommandeDim.statut.ilike(f"%{statut}%"))
    
    return query.offset(skip).limit(limit).all()
