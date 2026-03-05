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
    Click fav item
    Click view button

    