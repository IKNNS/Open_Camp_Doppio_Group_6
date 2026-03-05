*** Keywords ***
CLick fav item
    Browser.Click    ${itempage_locator.btn_fav}

Click view button
    Wait For Elements State    ${itempage_locator.btn_view}    visible
    Browser.Click    ${itempage_locator.btn_view}
