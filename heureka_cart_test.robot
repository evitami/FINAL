*** Settings ***
Library    SeleniumLibrary
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot
Test Setup    Open Chrome On Heureka Homepage
Test Teardown    Close Browser

*** Test Cases ***
Add items to cart
#    Current page should be    ${heureka home page}
    Click on "Dnešné tipy"    ${Tipy na darceky}
    Click on "Pre koho je darček"    ${Zena}
    fail
    click element    ${Vianoce}
    click element    ${Range}
    checkbox should be selected    ${Checkbox 40-100}
    Click on element    ${Kategorie Kavovary a pressa}
    switch window	locator=NEW
    sleep    5
    wait until element is visible    ${kavovar1}    timeout=3s
    click element    ${kavovar1}
    wait until element is visible    ${cart}    timeout=3s
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

