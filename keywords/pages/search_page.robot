***Keywords***
Click search box
    Click         ${search_locator.txt_search}

Input product name in search box
    [Arguments]   ${product_name}
    Fill text     ${search_locator.txt_search}       ${product_name}
    
Click search button
    Click         ${search_locator.btn_search}
    
Click color filter
    Click         ${search_locator.btn_color_filter}

Click color option
    [Arguments]   ${color}
    ${color_locator}        String.Replace string         ${search_locator.btn_color_option}    ***color***    ${color}
    Click         ${color_locator}

Get product price
    [Arguments]   ${product_id}
    ${product_price_locator}        String.Replace string         ${search_locator.lbl_product_price}    ***product_id***     ${product_id}
    ${product_price}      Get text       ${product_price_locator}
    [Return]    ${product_price}

Get product description
    [Arguments]   ${product_description}    ${product_name}
    ${product_description_locator}        String.Replace string         ${search_locator.lbl_product_description}    ***product_name***     ${product_name}
    ${product_description_locator}        String.Replace string         ${product_description_locator}    ***product_description***      ${product_description}
    ${product_description}      Get text       ${product_description_locator}
    [Return]    ${product_description}

Click product
    [Arguments]   ${product_description}    ${product_name}
    ${product_description_locator}        String.Replace string         ${search_locator.lbl_product_description}    ***product_name***     ${product_name}
    ${product_description_locator}        String.Replace string         ${product_description_locator}    ***product_description***      ${product_description}
    Click         ${product_description_locator}