*** Keywords ***
Open homepage Heureka.sk
    Open Browser    https://www.heureka.sk    gc
    Wait Until Page Contains    Heureka    5 sec

Click on "Dnešné tipy"
    [Arguments]     ${category_on_main_page}
    wait until element is visible    xpath://img[@alt='${category_on_main_page}']    timeout=3s
    click element    xpath://img[@alt='${category_on_main_page}']

Click on "Pre koho je darček"
    [Arguments]     ${Pre koho je darček}
    wait until element is visible    xpath://div[@class='o-wrapper']//a[@data-label='${Pre koho je darček}']    timeout=3s
    click element    xpath://div[@class='o-wrapper']//a[@data-label='${Pre koho je darček}']

Click on category
    [Arguments]     ${category_after_selection}
    wait until element is visible    ${category_after_selection}    timeout=3s
    click element    ${category_after_selection}

Select "Príležitosť"
    [Arguments]     ${Príležitosť}
    wait until element is visible    xpath://ul[@class='c-categories-list js-occasion-filter js-filter-list closed']//a[@data-name="${Príležitosť}"]    timeout=5s
    click element    xpath://ul[@class='c-categories-list js-occasion-filter js-filter-list closed']//a[@data-name="${Príležitosť}"]

Tick checkbox for "Cena"
    [Arguments]     ${Range}
    wait until element is visible    xpath://div[@class='c-form-cell c-form-cell--inline']//span[text()='${Range}']    timeout=10s
    click element    xpath://div[@class='c-form-cell c-form-cell--inline']//span[text()='${Range}']

Select item
    [Arguments]     ${item}
    wait until element is visible    xpath://div[@class='c-product__content']//a[text()='${item}']    timeout=5s
    click element    xpath://div[@class='c-product__content']//a[text()='${item}']
    wait until element is visible    ${cart}    timeout=3s

Click on button "Kúpiť na Heureke"
    wait until element is visible    xpath:(//button[text()='Kúpiť na Heureke'])[1]   timeout=10s
    click element    xpath:(//button[text()='Kúpiť na Heureke'])[1]
    wait until element is visible    ${cart}    timeout=5s

Check confirmation that item was added to cart
    [Arguments]     ${confirmation}
    wait until element is visible    xpath://div[@class='c-cart-confirm']//p[text()='${confirmation}']    timeout=10s

Remove popup window
    [Arguments]     ${button}
    wait until element is visible    ${button}    timeout=10s
    click element    ${button}

Check if price is in correct range
    [Arguments]     ${lowest price}    ${highest price}
    ${price}    get text    xpath:(${item v kosiku})[1]
    log    ${price}
    ${amount}    set Variable    ${price.replace(" €", "")}
    log    ${amount}
    Should be true    ${amount}>${lowest price}
    Should be true    ${amount}<${highest price}
    ${price}    get text    xpath:(${item v kosiku})[2]
    log    ${price}
    ${amount}    set Variable    ${price.replace(" €", "")}
    log    ${amount}
    Should be true    ${amount}>${lowest price}
    Should be true    ${amount}<${highest price}
    ${price}    get text    xpath:(${item v kosiku})[3]
    log    ${price}
    ${amount}    set Variable    ${price.replace(" €", "")}
    log    ${amount}
    Should be true    ${amount}>${lowest price}
    Should be true    ${amount}<${highest price}

Remove item from cart
    wait until element is visible    xpath:(${button na odstranenie itemu z kosika})[1]    timeout=5s
    click element    xpath:(${button na odstranenie itemu z kosika})[1]
    wait until element is visible    xpath://a[text()='Odstrániť z košíka']    timeout=5s
    click element    xpath://a[text()='Odstrániť z košíka']
    sleep    5s

Number of items in cart should be
    [Arguments]    ${number of items in cart}
    element should be visible    xpath://span[@data-count="${number of items in cart}"]

Check cart is empty
    [Arguments]    ${Message cart is empty}
    wait until element is visible    xpath://h1[@class='e-heading u-delta' and text()='${Message cart is empty}']    timeout=5s
    element should be visible    xpath://h1[@class='e-heading u-delta' and text()='${Message cart is empty}']

