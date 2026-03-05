*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
TC_005 - Verify user can add product to favorites successfully
    Browser.New Browser    chromium    headless=false    slowMo=0:00:00.5
    Browser.New Page    https://www.ikea.com/th/en/
    Check accept cookie
    CLick search bar
    Search item    ${item.Board}
    Click search
    Verify item from homepage    ${item.Board}
    Click item
    Verify from itempage    ${item.Board}
    Click fav item    
    Verify fav item    ${item.Board}    ${text.Fav}
    Click view button
    Verify itemname form favpage    ${item.Board}
    Verify button form favpage

    