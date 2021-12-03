*** Variables ***
${kavovar1}    Krups NESCAFÉ Dolce Gusto Mini Me KP123B31
${kavovar2}    Sencor SES 1710 BK
${kavovar3}    Krups XN1001

${Tipy na darceky}    Tipy na darčeky
${Zena}    Žena
${Vianoce}    Vianoce
${40-100}    40 - 100 €
${Checkbox 40-100}    xpath://input[@type="checkbox" and @id="40-100"]
${Kategorie Kavovary a pressa}    //h3//a[@data-id='40793']

${cart}    xpath://*[button[@data-test-id='js_cart_submit'] or //button[@class="c-top-offer__cart-button e-button e-button--highlight"]]

${Pokračovať v nákupe}    xpath://button[text()='Pokračovať v nákupe']
${Prejsť do košíku}    xpath://div[@class="c-cart-confirm"]//a[text()='Prejsť do košíku']

${Neskor}    xpath://div[@id="slidedown-footer"]//button[text()='Neskôr']

${Tovar sme pridali do košíka}    Tovar sme pridali do košíka

${Sprava ze kosik je prazdny}    Váš košík zíva prázdnotou...

${item v kosiku}    //*[div[@class="c-product-card__price u-bold"] or //span[@class="c-product-top-offer__price u-gamma "]]

${button na odstranenie itemu z kosika}    //a[@class="c-product-card__close c-modal__toggle js-modal__toggle e-action"]