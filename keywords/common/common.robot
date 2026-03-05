*** Keywords ***
Open training website
    New browser    chromium    headless=${FALSE}
    New page        https://www.ikea.com/th

Check accept cookie
    ${visible}=    Get Element States    ${common_locator.btn_acceptcookie}    visible
    IF    ${visible}
        Browser.Click    ${common_locator.btn_acceptcookie}
    END

# Verify Cookie
#     Run Keyword And Ignore Error    Browser.Click    css=#onetrust-accept-btn-handler
    
    
