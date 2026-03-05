*** Keywords ***
CLick search bar
    Browser.CLick    ${homepage_locator.txt_searchbar}

Search item
    [Arguments]    ${item}
    Browser.Fill Text    ${homepage_locator.txt_searchbar}    ${item}

Click search
    Browser.CLick    ${homepage_locator.ddl_item}

Verify item from homepage
    [Arguments]    ${item}
    Wait For Elements State    ${homepage_locator.lbl_item}>>text=${item}    visible

Click item    
    Browser.Click    ${homepage_locator.lbl_item} 







