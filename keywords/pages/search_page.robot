*** Settings ***
Resource  ${CURDIR}/../imports.robot

*** Keywords ***
Verify book is displayed
    SeleniumLibrary.Wait until element is visible    ${search.book_lists}