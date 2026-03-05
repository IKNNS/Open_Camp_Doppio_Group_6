*** Settings ***
#lib
Library    Browser

#common
Resource    ${CURDIR}/../keywords/common/common.robot

#pages
Resource    ${CURDIR}/../keywords/pages/home_page.robot

#locator
Resource    ${CURDIR}/locators/common_locator.robot
Resource    ${CURDIR}/locators/homepage_locator.robot
