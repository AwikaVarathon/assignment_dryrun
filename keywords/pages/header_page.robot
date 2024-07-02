*** Settings ***
Resource  ${CURDIR}/../imports.robot

*** Keywords ***
Click store header
    common.Click element when ready    ${header.href_store_header}

Search with keyword
    [Arguments]   ${keyword}
    SeleniumLibrary.Wait until element is visible    ${header.txt_search_keyword}
    SeleniumLibrary.Input text    ${header.txt_search_keyword}    ${keyword}
    SeleniumLibrary.Press keys    ${header.txt_search_keyword}    RETURN