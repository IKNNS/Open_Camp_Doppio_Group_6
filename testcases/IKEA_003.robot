*** Settings ***
Resource    ${CURDIR}/../resources/import.robot

***Test Cases***
IKEA 003 - Verify user can filter products and view product details
    Open training website
    Check accept cookie
    Click search box
    Input product name in search box    ${ikea003.product_name}
    Click search button
    Click color filter
    Click color option      ${ikea003.product_color}
    Get product price      ${ikea003.product_id}
    Get product description      ${ikea003.product_description}     ${ikea003.product_name}
    Click product     ${ikea003.product_description}     ${ikea003.product_name}

    
