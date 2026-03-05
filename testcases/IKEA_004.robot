*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Library    DebugLibrary
*** Test Cases ***
TC_004 - Verify user can add product successfully
    Browser.New Browser    chromium    headless=false    slowMo=0:00:00.5
    Browser.New Page    https://www.ikea.com/th/en/
    Check accept cookie
    CLick search bar
    Search item    ${ikea005.Name}
    Click search
    Click item
    Add item to cart
    Browser.Wait For Elements State    ${itempage_locator.btn_gotoshoppingbag}
    Go to shopping bag button
    Debug