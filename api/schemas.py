# Fichier Pydantic pour les schémas de l'API  
# Pydantic est une bibliothèque de validation de données en Python.
# Elle permet de valider les données entrantes et sortantes de l'API. 
# Met dans notre cas, elle va valider que les données sortantes étant donné que l'API est en lecture seule.

# Importation des modules nécessaires
from pydantic import BaseModel
from typing import List, Optional 

# --- Modèles de sortie pour les ventes ---
class VenteFaitBase(BaseModel):
    id_commande: int
    id_client: int
    id_produit: int
    quantite_totale: int
    vente_totale: float

    class Config:
        orm_mode = True  # Permet à Pydantic de lire les données des objets ORM

# --- Modèle de sortie pour les clients ---
class ClientDimBase(BaseModel):
    id_client: int
    nom: str
    prenom: str
    gender: str
    email: str
    telephone: str
    adresse: str

    class Config:
        orm_mode = True # Permet à Pydantic de lire les données des objets ORM

# --- Modèle de sortie pour les produits ---
class ProduitDimBase(BaseModel):
    id_produit: int
    nom: str
    categorie: str

    class Config:
        orm_mode = True  # Permet à Pydantic de lire les données des objets ORM

# --- Modèle de sortie pour les commandes ---
class CommandeDimBase(BaseModel):
    id_commande: int
    date_commande: str  # Utiliser str pour la date, Pydantic gère la conversion
    statut: str

    class Config:
        orm_mode = True  # Permet à Pydantic de lire les données des objets ORM 

