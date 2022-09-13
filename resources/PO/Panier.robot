*** Settings ***
Resource  PageProduit.robot


*** Keywords ***
Aller au panier
    Click Element  xpath=//*[@id="sw-gtc"]/span/a
    Wait Until Page Contains  Votre panier
    Select From List By Value  5

    Sleep  5