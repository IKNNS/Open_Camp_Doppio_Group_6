*** Settings ***
Resource    ${CURDIR}/../resources/import.robot
Library     DebugLibrary


*** Test Cases ***
#Refactor
IKEA001 Verify that user cannot login with empty or invalid credentials
    common.Open training website
    common.Check accept cookie
    # IF      '${LANG}' == 'th'
    #     Change language to Thai
    # END
# 1. Click profile button
    topbar_page.Go to profile
# 2. Click "เข้าสู่ระบบ" button
    login_page.Clcik login
    login_page.Verify Login Error Message empty mail
    Browser.Take screenshot
# 3. Input email
    login_page.Input username   ${TC001.username}   
# 4. Click "เข้าสู่ระบบ"  
    login_page.Clcik login
    login_page.Verify Login Error Message empty password
    Browser.Take screenshot
# 5. Input password    
    login_page.Input password   ${TC001.password}
# 6. Click "เข้าสู่ระบบ"  
    login_page.Clcik login
    login_page.Verify Login Error Message
    Browser.Take screenshot


