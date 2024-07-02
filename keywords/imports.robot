*** Settings ***
Library    SeleniumLibrary

# Locators
Resource    ${CURDIR}/locators/header_locator.robot
Resource    ${CURDIR}/locators/search_locator.robot

# Pages
Resource    ${CURDIR}/pages/header_page.robot
Resource    ${CURDIR}/pages/search_page.robot
Resource    ${CURDIR}/common.robot

# Test data
Variables   ${CURDIR}/../resources/testdata/testdata.yaml
Variables   ${CURDIR}/../resources/settings/setting.yaml