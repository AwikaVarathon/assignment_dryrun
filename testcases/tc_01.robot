*** Settings ***
Resource  ${CURDIR}/../keywords/imports.robot

*** Test Cases ***
TC_01
    [Tags]  tc_01
    common.Open nejavu website
    header_page.Click store header
    header_page.Search with keyword    ${tc_01['book_name']}
    search_page.Verify book is displayed
    common.Close browser