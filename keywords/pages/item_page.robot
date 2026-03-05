*** Keywords ***
CLick fav item
    Browser.Click    ${itempage_locator.btn_fav}

Click view button
    Wait For Elements State    ${itempage_locator.btn_view}    visible
    Browser.Click    ${itempage_locator.btn_view}

Verify from itempage
    [Arguments]    ${item}
    Wait For Elements State    ${itempage_locator.lbl_item} >> text=${item}

Verify fav item
    [Arguments]    ${item}    ${text}
    Wait For Elements State    p.hnf-toast__text >> text=${item} ${text}    visible

    
    

