***Keywords***
Open web
    Browser.New browser     chromium    ${FALSE}
    Browser.New page     https://www.ikea.com/th/en/
Check accept cookie
    ${visible}=    Get Element States    id=onetrust-accept-btn-handler    contains    visible
    IF    ${visible}
        Browser.Click    id=onetrust-accept-btn-handler
    END

# **********************


Click search box
    Browser.Click         ${search_locator.txt_search}
Input product name in search box
    [Arguments]   ${product_name}
    Browser.Fill text     ${search_locator.txt_search}       ${product_name}
Click search button
    Browser.Click         ${search_locator.btn_search}
Click color filter
    Browser.Click         ${search_locator.btn_color_filter}
Click color option
    [Arguments]   ${color}
    ${color_locator}        String.Replace string         ${search_locator.btn_color_option}    ***color***    ${color}
    # Log to console        ${color_locator}
    Browser.Click         ${color_locator}
Click product card
    [Arguments]   ${product_description}    ${product_name}
    # debug
    ${product_description_locator}        String.Replace string         ${search_locator.lbl_product_description}    ***product_name***     ${product_name}
    ${product_description_locator}        String.Replace string         ${product_description_locator}    ***product_description***      ${product_description}

    Browser.Click         ${product_description_locator}
