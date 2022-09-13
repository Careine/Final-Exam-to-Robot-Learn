*** Settings ***
Resource  ../resources/common.robot
Resource  ../resources/PO/PageAccueil.robot
Resource  ../resources/PO/PageProduit.robot
Resource  ../resources/PO/Panier.robot

Suite Setup  common.Begin Web Test
Suite Teardown  common.End Web Test

*** Test Cases ***
Voir les produits disponibles
    PageAccueil.Accéder au moteur de recherche Google
    PageAccueil.Rechercher le site web Amazon
    PageAccueil.Naviguer vers le site d'Amazon
    PageAccueil.Rechercher la voiture LaFerarri

Ajout du produit au panier
    PageProduit.Choisir la ferrari
    PageProduit.Ajouter la ferrari au panier

Accéder au panier
    Panier.Aller au panier