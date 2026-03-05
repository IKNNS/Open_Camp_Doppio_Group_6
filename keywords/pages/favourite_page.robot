*** Keywords ***
Verify itemname form favpage
    [Arguments]    ${item}
    Wait For Elements State    ${favouritepage_locator.lbl_item} >> text=${item}    visible

Verify button form favpage
    Wait For Elements State    ${favouritepage_locator.btn_buy}    visible


