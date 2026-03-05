*** Settings ***
#lib
Library    Browser  strict=${False}

#common
Resource    ${CURDIR}/../keywords/common/common.robot

#pages
Resource    ${CURDIR}/../keywords/pages/home_page.robot
<<<<<<< Updated upstream
Resource    ${CURDIR}/../keywords/pages/top_bar_page.robot
=======
Resource    ${CURDIR}/../keywords/pages/item_page.robot
#Resource    ${CURDIR}/../keywords/pages/top_bar_page.robot
>>>>>>> Stashed changes

#locator
Resource    ${CURDIR}/locators/common_locator.robot
<<<<<<< Updated upstream
Resource    ${CURDIR}/locators/home_locator.robot
=======
Resource    ${CURDIR}/locators/homepage_locator.robot
#Resource    ${CURDIR}/locators/home_locator.robot
Resource    ${CURDIR}/locators/itempage_locator.robot
#yaml files
Variables    ${CURDIR}/testdata/data.yaml
>>>>>>> Stashed changes

#testdata
Variables   ${CURDIR}/testdata/data.yaml

#translation
<<<<<<< Updated upstream
Variables   ${CURDIR}/translation/${LANG}.yaml
=======
#Variables    ${CURDIR}/translation/${LANG}.yaml
>>>>>>> Stashed changes
