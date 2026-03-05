*** Keywords ***
Check accept cookie
    ${visible}=    Get Element States    ${common_locator.btn_acceptcookie}    contains    visible
    IF    ${visible}
        Browser.Click    ${common_locator.btn_acceptcookie}
    END