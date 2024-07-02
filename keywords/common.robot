*** Settings ***
Resource  ${CURDIR}/imports.robot

*** Keywords ***
Open nejavu website
    SeleniumLibrary.Open browser    ${browser['url']}    ${browser['type']}
    SeleniumLibrary.Maximize Browser Window

Click element when ready
    [Arguments]     ${locator}    ${timeout}=${GLOBAL_TIMEOUT}
    SeleniumLibrary.Wait until element is visible    ${locator}    ${timeout}
    SeleniumLibrary.Click Element    ${locator}

Close browser
    SeleniumLibrary.Close browser