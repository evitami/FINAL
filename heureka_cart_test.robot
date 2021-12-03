*** Settings ***
Library    SeleniumLibrary
Resource    ./keywords/keywords.robot
Resource    ./variables/variables.robot
Test Setup    Open homepage Heureka.sk
Test Teardown    Close Browser

*** Test Cases ***
Add and remove items to/from cart
#    Current page should be    ${heureka home page}
    Click on "Dnešné tipy"    ${Tipy na darceky}
    Click on "Pre koho je darček"    ${Zena}
    Select "Príležitosť"    ${Vianoce}
    Tick checkbox for "Cena"    ${40-100}
    checkbox should be selected    ${Checkbox 40-100}
    Click on category    ${Kategorie Kavovary a pressa}
    switch window	locator=NEW
    Select item    ${kavovar1}
    Click on button "Kúpiť na Heureke"
    Check confirmation that item was added to cart    ${Tovar sme pridali do košíka}
    click button    ${Pokračovať v nákupe}
    go back
    Select item    ${kavovar2}
    Click on button "Kúpiť na Heureke"
    Check confirmation that item was added to cart    ${Tovar sme pridali do košíka}
    click button    ${Pokračovať v nákupe}
    go back
    Select item    ${kavovar3}
    Click on button "Kúpiť na Heureke"
    Check confirmation that item was added to cart    ${Tovar sme pridali do košíka}
    click element    ${Prejsť do košíku}
    Remove popup window    ${Neskor}
    Number of items in cart should be    3
    Check if price is in correct range    40    100
    Remove item from cart
    Number of items in cart should be    2
    Remove item from cart
    Number of items in cart should be    1
    Remove item from cart
    Check cart is empty    ${Sprava ze kosik je prazdny}

