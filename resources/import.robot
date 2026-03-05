*** Settings ***
#lib
Library    Browser    strict=false

#common
Resource    ${CURDIR}/../keywords/common/common.robot

#pages
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/topbar_page.robot
Resource    ${CURDIR}/../keywords/pages/login_page.robot
Resource    ${CURDIR}/../keywords/pages/item_page.robot
Resource    ${CURDIR}/../keywords/pages/favourite_page.robot

#locators
Resource    ${CURDIR}/locators/common_locator.robot
Resource    ${CURDIR}/locators/topbar_locator.robot
Resource    ${CURDIR}/locators/login_locator.robot
Resource    ${CURDIR}/locators/homepage_locator.robot
Resource    ${CURDIR}/locators/itempage_locator.robot
Resource    ${CURDIR}/locators/favouritepage_locator.robot

#yaml files
Variables    ${CURDIR}/testdata/data.yaml

#translation
# Variables   ${CURDIR}/translation/${LANG}.yaml
