*** Keywords ***
CLick search bar
    Browser.CLick    ${homepage_locator.txt_searchbar} 

Search item
    Browser.Fill Text    ${homepage_locator.txt_searchbar}    ${item.Board}

Click search
    Browser.CLick    ${homepage_locator.ddl_item}






