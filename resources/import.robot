*** Settings ***
#lib
Library    Browser

#common
Resource    ${CURDIR}/../keywords/common/common.robot

#pages
Resource    ${CURDIR}/../keywords/pages/home_page.robot
Resource    ${CURDIR}/../keywords/pages/top_bar_page.robot

#locator
Resource    ${CURDIR}/locators/common_locator.robot
Resource    ${CURDIR}/locators/home_locator.robot

#testdata
Variables   ${CURDIR}/testdata/data.yaml

#translation
Variables   ${CURDIR}/translation/${LANG}.yaml
