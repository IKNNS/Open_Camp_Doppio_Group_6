***Settings***
Library     Browser    strict=${FALSE}
Library     DebugLibrary
Library     String

Resource    ${CURDIR}/../resources/import.robot

Resource    ${CURDIR}/../resources/locators/search_locator.robot
Resource    ${CURDIR}/../keywords/pages/search_page.robot

***Test Cases***
IKEA 003 - Verify user can filter products and view product details
    Open web
    Check accept cookie
    Click search box
    Input product name in search box    STOCKHOLM 2025
    Click search button
    Click color filter
    Click color option      brown
    Click product card      2-seat sofa, Alhamn dark brown     STOCKHOLM 2025
