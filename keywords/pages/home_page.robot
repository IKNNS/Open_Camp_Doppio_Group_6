*** Keywords ***
CLick search bar
    Browser.CLick    ${homepage_locator.txt_searchbar} 

Search item
    Browser.Fill Text    ${homepage_locator.txt_searchbar}    ${item.Board}

Click Search
    Browser.CLick    ${homepage_locator.ddl_item}