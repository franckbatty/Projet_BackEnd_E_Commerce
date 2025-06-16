"""SQLAlchemy models"""
from sqlalchemy import Column, Integer, String, Float, ForeignKey
from sqlalchemy.orm import relationship # permet des relations de clé étrangère entre les tables.
from database import Base


# Table de Fait : Vente
class VenteFait(Base):
    __tablename__ = "fait_ventes_aggregees" # Nom de la table dans la base de données
    __table_args__ = {"schema": "e_commerce_couche_gold"} # Nom du schéma 
    id_commande = Column(Integer, ForeignKey("e_commerce_couche_gold.dim_commande.id_commande"))
    id_client = Column(Integer, ForeignKey("e_commerce_couche_gold.dim_client.id_client"))
    id_produit = Column(Integer, ForeignKey("e_commerce_couche_gold.dim_produit.id_produit"))   
    quantite_totale = Column(Integer)
    vente_totale = Column(Float)
    
    # Relations
    client = relationship("ClientDim", back_populates="ventes")
    produit = relationship("ProduitDim", back_populates="ventes")
    commande = relationship("CommandeDim", back_populates="ventes")

    # bak_populates="ventes" est utilisé pour établir une relation bidirectionnelle entre les tables. 
    
    # cascade="all, delete", pas besoin car notre API Restful sera juste en lecture seule, donc pas de suppression de données.

# Table de Dimension : Client
class ClientDim(Base):
    __tablename__ = "dim_client" # Nom de la table dans la base de données
    __table_args__ = {"schema": "e_commerce_couche_gold"} # Nom du schéma 
    id_client = Column(Integer, primary_key=True)
    nom = Column(String)
    prenom = Column(String)
    gender = Column(String)
    email = Column(String)
    telephone = Column(String)
    adresse = Column(String)

    # Relation 
    ventes = relationship("VenteFait", back_populates="client")
    

# Table de Dimension : Produit
class ProduitDim(Base):
    __tablename__ = "dim_produit" # Nom de la table dans la base de données
    __table_args__ = {"schema": "e_commerce_couche_gold"} # Nom du schéma 
    id_produit = Column(Integer, primary_key=True)
    nom = Column(String)
    categorie = Column(String)

    # Relation
    ventes = relationship("VenteFait", back_populates="produit")
    
# Table de Dimension : Commande
class CommandeDim(Base):
    __tablename__ = "dim_commande" # Nom de la table dans la base de données
    __table_args__ = {"schema": "e_commerce_couche_gold"} # Nom du schéma 
    id_commande = Column(Integer, primary_key=True)
    date_commande = Column(String)  # Utilisation de String pour stocker la date au format ISO, c'est-à-dire 'YYYY-MM-DD'
    statut = Column(String)

    # Relation
    ventes = relationship("VenteFait", back_populates="commande") 

    