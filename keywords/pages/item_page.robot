*** Keywords ***
CLick fav item
    Browser.Click    ${itempage_locator.btn_fav}

Click view button
    Wait For Elements State    ${itempage_locator.btn_view}    visible
    Browser.Click    ${itempage_locator.btn_view}

Add item to cart
    Browser.Click    ${itempage_locator.btn_addtocart}
Go to shopping bag button
    Browser.Click    ${itempage_locator.btn_gotoshoppingbag}    
Verify from itempage
    [Arguments]    ${item}
    Wait For Elements State    ${itempage_locator.lbl_item} >> text=${item}

Verify fav item
    [Arguments]    ${item}    ${text}
    Wait For Elements State    ${itempage_locator.lbl_name} >> text=${item} ${text}    visible

    
    

