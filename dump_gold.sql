--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: e_commerce_couche_gold; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA e_commerce_couche_gold;


ALTER SCHEMA e_commerce_couche_gold OWNER TO postgres;

--
-- Name: dim_client; Type: VIEW; Schema: e_commerce_couche_gold; Owner: postgres
--

CREATE VIEW e_commerce_couche_gold.dim_client AS
 SELECT id_client,
    nom,
    prenom,
    gender,
    email,
    telephone,
    adresse
   FROM e_commerce_couche_silver.clients;


ALTER VIEW e_commerce_couche_gold.dim_client OWNER TO postgres;

--
-- Name: dim_commande; Type: VIEW; Schema: e_commerce_couche_gold; Owner: postgres
--

CREATE VIEW e_commerce_couche_gold.dim_commande AS
 SELECT id_commande,
    date_commande,
    statut
   FROM e_commerce_couche_silver.commandes;


ALTER VIEW e_commerce_couche_gold.dim_commande OWNER TO postgres;

--
-- Name: dim_produit; Type: VIEW; Schema: e_commerce_couche_gold; Owner: postgres
--

CREATE VIEW e_commerce_couche_gold.dim_produit AS
 SELECT id_produit,
    nom,
    categorie
   FROM e_commerce_couche_silver.produits;


ALTER VIEW e_commerce_couche_gold.dim_produit OWNER TO postgres;

--
-- Name: fait_ventes_aggregees; Type: VIEW; Schema: e_commerce_couche_gold; Owner: postgres
--

CREATE VIEW e_commerce_couche_gold.fait_ventes_aggregees AS
 SELECT com.id_commande,
    c.id_client,
    p.id_produit,
    sum(dc.quantite) AS quantite_totale,
    sum(dc.prix_total) AS vente_totale
   FROM (((e_commerce_couche_silver.details_commandes dc
     JOIN e_commerce_couche_silver.commandes com ON ((dc.id_commande = com.id_commande)))
     JOIN e_commerce_couche_silver.clients c ON ((com.id_client = c.id_client)))
     JOIN e_commerce_couche_silver.produits p ON ((dc.id_produit = p.id_produit)))
  GROUP BY com.id_commande, c.id_client, p.id_produit;


ALTER VIEW e_commerce_couche_gold.fait_ventes_aggregees OWNER TO postgres;

--
-- PostgreSQL database dump complete
--

