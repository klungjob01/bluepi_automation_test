*** Keywords ***
Open website
    Open browser    ${url}    ${browser}

Click element when ready
    [Arguments]    ${locator}
    SeleniumLibrary.Wait until element is visible    ${locator}
    SeleniumLibrary.Click element    ${locator}

Input text when ready
    [Arguments]    ${locator}    ${text}
    SeleniumLibrary.Wait until element is visible    ${locator}
    SeleniumLibrary.Input text    ${locator}    ${text}

Go to add item tab
    common.Click element when ready      ${lbl_add_item_tab}

Go to to do tasks tab
    common.Click element when ready      ${lbl_to_do_tasks_tab}

Go to completed tab
    common.Click element when ready      ${lbl_completed_tab}