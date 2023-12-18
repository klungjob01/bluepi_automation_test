*** Keywords ***
Finish task
    [Arguments]    ${task_number}
    ${target_doing_task_locator}    String.Replace string    ${lbl_doing_task}    @#task_number@#    ${task_number}
    common.Click element when ready    ${target_doing_task_locator}

Cancel task
    [Arguments]    ${task_number}
    ${target_doing_task_locator}    String.Replace string    ${btn_cancel_task}    @#task_number@#    ${task_number}
    common.Click element when ready    ${target_doing_task_locator}

Verify that the task is complted
    common.Go to completed tab
    ${completed_task}    SeleniumLibrary.Get text    ${lbl_complted_task}
    BuiltIn.Should be equal    ${completed_task}    done


