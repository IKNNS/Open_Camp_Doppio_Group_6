*** Keywords ***
CLick search bar
    Browser.CLick    ${homepage_locator.txt_searchbar} 

Search item
    [Arguments]    ${item}
    Browser.Fill Text    ${homepage_locator.txt_searchbar}    ${item}

<<<<<<< Updated upstream
Click Search
    Browser.CLick    ${homepage_locator.ddl_item}
=======
Click search
    Browser.CLick    ${homepage_locator.ddl_item}

Click item
    Browser.CLick    ${homepage_locator.click_item}




>>>>>>> Stashed changes
