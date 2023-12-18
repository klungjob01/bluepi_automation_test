*** Settings ***
Resource    ${CURDIR}/../resource/import.robot
Test Setup    Open website
Test Teardown    Close browser

*** Test Cases ***
TC-01 Verify that user can complete their task
    [Documentation]    This number in the test case is represent task number (not lees than 1).
    add_item_page.Input task    Test01!
    add_item_page.Click add task
    common.Go to to do tasks tab
    add_item_page.Verify that new task is added    1
    to_do_task_page.Finish task    1
    to_do_task_page.Verify that the task is complted
    complete_page.Delete complted task    1
    complete_page.Verify that complted task has deleted

TC-02 Verify that user can delete task from to do tasks page
    [Documentation]    This number in the test case is represent task number (not lees than 1).
    add_item_page.Input task    Test01!
    add_item_page.Click add task
    common.Go to to do tasks tab
    add_item_page.Verify that new task is added    1
    common.Go to add item tab
    add_item_page.Input task    Test02!
    add_item_page.Click add task
    common.Go to to do tasks tab
    add_item_page.Verify that new task is added    2
    to_do_task_page.Cancel task    2
    to_do_task_page.Cancel task    1
