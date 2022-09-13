*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot


*** Keywords ***
Accéder au moteur de recherche Google
    Go To  ${GOOGLE_URL}
    Wait Until Page Contains  Google

Rechercher le site web Amazon
    Clear Element Text  name=q
    Input Text  name=q  amazon
    Mouse Down  xpath=/html/body/div[1]/div[2]/div/img
    Mouse Up  xpath=/html/body/div[1]/div[2]/div/img
    Click Element  xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[3]/center/input[1]
    Wait Until Page Contains  Images

Naviguer vers le site d'Amazon
    #Pour cliquer sur un lien
    Click Link  xpath://*[@id="rso"]/div[1]/div/div/div/div/div/div/div/div[1]/a
    Wait Until Page Contains  Amazon
    #Click Element  xpath=//*[@id="sp-cc-rejectall-link"]
    Click Element  xpath=//*[@id="sp-cc-accept"]

Rechercher la voiture LaFerarri
    Clear Element Text  xpath=//*[@id="twotabsearchtextbox"]
    Input Text  xpath=//*[@id="twotabsearchtextbox"]  Ferrari
    Click Element  xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains  Ferrari
    



