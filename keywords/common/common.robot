*** Keywords ***
Check accept cookie
    ${visible}=    Get Element State    ${common_locator.btn_acceptcookie}    visible
    IF    ${visible}
        Browser.Click    ${common_locator.btn_acceptcookie}
    END