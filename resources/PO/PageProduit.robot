*** Settings ***
Resource  PageAccueil.robot


*** Keywords ***
Choisir la ferrari
    Sleep  3
    #Pour scroller vers un élément de la page
    Scroll Element Into View  xpath=//*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[10]/div/div/div/div/div[2]/div[1]/h2/a

    Click Link  xpath://*[@id="search"]/div[1]/div[1]/div/span[3]/div[2]/div[10]/div/div/div/div/div[2]/div[1]/h2/a

    Wait Until Page Contains  Ajouter au panier

Ajouter la ferrari au panier
    Click Button  xpath=//*[@id="add-to-cart-button"]

    Wait Until Page Contains  Ajouté au panier

