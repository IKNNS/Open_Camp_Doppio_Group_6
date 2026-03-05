*** Settings ***
#lib
Library    Browser

#common
Resource    ${CURDIR}/../keywords/common/common.robot

#pages
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/item_page.robot

#locator
Resource    ${CURDIR}/locators/common_locator.robot
Resource    ${CURDIR}/locators/homepage_locator.robot
Resource    ${CURDIR}/locators/itempage_locator.robot

#yaml file
Variables    ${CURDIR}/testdata/data.yaml
