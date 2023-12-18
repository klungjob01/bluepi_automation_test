*** Settings ***
#Library
Library    SeleniumLibrary
Library    String

#Keyword
Resource    ${CURDIR}/../keyword/common.robot
Resource    ${CURDIR}/../keyword/page/add_item_page.robot
Resource    ${CURDIR}/../keyword/page/to_do_task_page.robot
Resource    ${CURDIR}/../keyword/page/complete_page.robot

#Locator
Resource    ${CURDIR}/../keyword/common_locator.robot
Resource    ${CURDIR}/../keyword/locator/add_item_locator.robot
Resource    ${CURDIR}/../keyword/locator/to_do_task_locator.robot
Resource    ${CURDIR}/../keyword/locator/complete_locator.robot

#Test data
Resource    ${CURDIR}/../resource/test_data.robot