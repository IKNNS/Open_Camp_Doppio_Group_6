*** Keywords ***
Input username
    [Arguments]     ${username}
    Browser.Fill text       ${login_locator.txt_username}  ${username}
    Log to console      username : ${username}

Input password
    [Arguments]     ${password}
    Browser.Fill text       ${login_locator.txt_password}  ${password}

Clcik login
    Browser.Click   ${login_locator.btn_login}

Verify Login Error Message empty mail
    Browser.Wait for elements state    ${login_locator.lbl_emptymail_error}       visible
    ${msg_error}=    Browser.Get text    ${login_locator.lbl_emptymail_error}    ==     Please enter a valid email
    Log to console   Error messgae: ${msg_error} 

Verify Login Error Message empty password
    Browser.Wait for elements state    ${login_locator.lbl_error}       visible
    ${title}=    Browser.Get Text    ${login_locator.lbl_errormsg_title}
    ${body}=     Browser.Get Text    ${login_locator.lbl_errormsg_body}
    ${full_msg}=    Catenate    SEPARATOR=    ${title} ${body}
    Log To Console    ${full_msg}
    Should Be Equal As Strings      ${full_msg}     There was a problem signing in It’s our fault, not yours. Please try again later to see if we can work it out.

Verify Login Error Message
    Browser.Wait for elements state    ${login_locator.lbl_error}     visible
    ${msg_error}=    Browser.Get text    ${login_locator.lbl_error}     ==     The email address or password you entered is incorrect or the account does not exist in IKEA Thailand
    Log to console   Error messgae: ${msg_error}

# Verify Login Error Message empty password
#     Browser.Wait for elements state    ${login_locator.lbl_error}
#     ${title}=    Browser.Get Text    ${login_locator.lbl_errormsg_title}    ==  There was a problem signing in
#     Log to console    Error messgae: ${title}  
#     ${body}=     Browser.Get Text    ${login_locator.lbl_errormsg_body}  ==  "It’s our fault, not yours. Please try again later to see if we can work it out"
#     Log to console    ${body}
#     ${full_msg}=    Catenate    SEPARATOR=    ${title} ${body}
#     Log To Console    ${full_msg}
#     Should Be Equal As Strings      ${full_msg}     There was a problem signing in It’s our fault, not yours. Please try again later to see if we can work it out.
