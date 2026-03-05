***Keywords***
click check policy 
    Browser.Check checkbox              selector=${chk_check_policy} 
click unchceck policy
    Browser.Unchceck checkbox           selector=${chk_check_policy}
click create account
    Browser.click                       selector=${btn_create_account}
Verify policy error message         
    Browser.Get Text                    selector=${lbl_error_message_policy_message}        ==          Please confirm that you agree to the Privacy Policy to proceed
Verify first name error message         
    Browser.Get Text                    selector=${lbl_error_message_first_name}            ==          The first name field cannot be left empty
Verify last name error message
    Browser.Get Text                    selector=${lbl_error_message_last_name}             ==          The last name field cannot be left empty
Verify email error message
    Browser.Get text                    selector=${lbl_error_message_email}                 ==          The email address field cannot be left empty
Verify password error message
    Browser.Get text                    selector=${lbl_error_message_password}              ==          The password field cannot be left empty
