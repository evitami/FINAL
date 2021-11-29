*** Settings ***
Library    SeleniumLibrary
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot
Test Setup    Open Chrome On Heureka Homepage
Test Teardown    Close Browser

*** Test Cases ***
Open Heureka page
    [Tags]    DEBUG tag
    click element    ${Tipy na darceky}
    click element    ${Zena}
    click element    ${Vianoce}
    click element    ${Range}
    checkbox should be selected    ${Checkbox 40-100}
    click element    ${Kategorie Kavovary a pressa}
    sleep    3
    Switch to tab
    sleep    5
    click element    ${kavovar1}
    sleep    5
    Add to cart
    sleep    5
    Check product was added to cart
    Continue in shopping
    sleep    3
    go back
    wait until page contains element    ${kavovar2}
    click element    ${kavovar2}
    Add to cart
    sleep    3
    Check product was added to cart
    Continue in shopping
    sleep    3
    go back
    sleep    3
    click element    ${kavovar3}
    Add to cart
    sleep    3
    Check product was added to cart
    Go to cart
    sleep    10
    Check amount of items in cart
    Check if price is in correct range
    sleep    3
    Remove item from cart and check if it was removed
    Remove all items and check cart is empty

