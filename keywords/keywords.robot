*** Keywords ***
Open Chrome On Heureka Homepage
    Open Browser    https://www.heureka.sk    gc
    Maximize Browser Window
    Wait Until Page Contains    Heureka    5 sec

Add to cart
    click element    xpath://*[button[@data-test-id='js_cart_submit'] or //button[@class="c-top-offer__cart-button e-button e-button--highlight"]]

Check product was added to cart
    element should be visible    xpath://p[@class='c-notice__content' and text()='Tovar sme pridali do košíka']

Switch to tab
    switch window    Kávovary a espressá od 40 do 100 € – Heureka.sk

Continue in shopping
    click element    xpath://button[@class="c-cart-confirm__button c-offscreen__close js-offscreen__toggle e-link"]

Check if price is in correct range
    ${price}    get text    xpath:(//*[div[@class="c-product-card__price u-bold"] or //span[@class="c-product-top-offer__price u-gamma "]])[1]
    log    ${price}
    ${amount}    set Variable    ${price.replace(" €", "")}
    log    ${amount}
    Should be true    ${amount}>40
    Should be true    ${amount}<100
    ${price}    get text    xpath:(//*[div[@class="c-product-card__price u-bold"] or //span[@class="c-product-top-offer__price u-gamma "]])[2]
    log    ${price}
    ${amount}    set Variable    ${price.replace(" €", "")}
    log    ${amount}
    Should be true    ${amount}>40
    Should be true    ${amount}<100
    ${price}    get text    xpath:(//*[div[@class="c-product-card__price u-bold"] or //span[@class="c-product-top-offer__price u-gamma "]])[3]
    log    ${price}
    ${amount}    set Variable    ${price.replace(" €", "")}
    log    ${amount}
    Should be true    ${amount}>40
    Should be true    ${amount}<100

Remove item from cart and check if it was removed
    click element    xpath:(//a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"])[1]
    sleep    10s
    click element    xpath://a[@class="e-button e-button--negative"]
    sleep    10s
    element should be visible    xpath://span[@data-count="2"]

Remove all items and check cart is empty
    click element    xpath:(//a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"])[1]
    sleep    10s
    click element    xpath://a[@class="e-button e-button--negative"]
    sleep    10s
    click element    xpath:(//a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"])[1]
    sleep    10s
    click element    xpath://a[@class="e-button e-button--negative"]
    sleep    10s
    element should be visible    xpath://h1[@class='e-heading u-delta' and text()='Váš košík zíva prázdnotou...']
Go to cart
    click element    xpath://div[@class="c-cart-confirm__buttons"]//a[@href="https://www.heureka.sk/kosik/"]

Check amount of items in cart
    click element    xpath://button[@id="onesignal-slidedown-cancel-button"]
    element should be visible    xpath://span[@data-count="3"]

Check item is removed
    element should be visible    xpath://span[@data-count="2"]