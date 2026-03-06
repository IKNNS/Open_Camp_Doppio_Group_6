*** Keywords ***
Open training website
    New browser    chromium    headless=${FALSE}
    New page        https://www.ikea.com/th

Check accept cookie
    ${visible}=    Get Element States    ${common_locator.btn_acceptcookie}    contains    visible
    IF    ${visible}
        Browser.Click    ${common_locator.btn_acceptcookie}
    END
    
    
