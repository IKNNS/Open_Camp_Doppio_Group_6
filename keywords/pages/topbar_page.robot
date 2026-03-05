*** Keywords ***
Go to profile
    Browser.Click           selector=${topbar_locator.btn_profile}

Change language to Thai
    Browser.Click           selector=${topbar_locator.btn_lang} 
    Browser.Click           selector=${topbar_locator.btn_lang-th} 

    