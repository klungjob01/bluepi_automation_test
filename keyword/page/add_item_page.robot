*** Keywords ***
Input task
    [Arguments]    ${new_task}
    common.Input text when ready    ${txt_add_new_task}    ${new_task}
    ${to_do_task}    BuiltIn.Set variable    ${new_task}
    BuiltIn.Set global variable    ${to_do_task}

Click add task
    common.Click element when ready    ${btn_add_new_task}

Verify that new task is added
    [Documentation]    This keyword receive 1 argument as number in test case level to replace in 
    ...                the task locator that located in TO-DO TASKS tab by using keyword Replace String
    ...                and contain a new locator in ${current_task_locator}
    [Arguments]    ${task_number}
    ${current_task_locator}    String.Replace string    ${lbl_doing_task}    @#task_number@#    ${task_number}
    ${inprogress_task}    SeleniumLibrary.Get text    ${current_task_locator}
    BuiltIn.Should be equal    ${to_do_task}    ${inprogress_task}
