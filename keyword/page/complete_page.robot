*** Keywords ***
Delete complted task
    [Arguments]    ${task_number}
    ${complted_task_locator}    String.Replace string    ${btn_delete_task}    @#task_number@#    ${task_number}
    ${completed_task}    BuiltIn.Set variable    ${complted_task_locator}
    BuiltIn.Set global variable    ${completed_task}
    common.Click element when ready    ${complted_task_locator}

Verify that complted task has deleted
    Page Should Not Contain    ${completed_task}
