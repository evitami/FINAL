*** Variables ***
${kavovar1}    xpath://div[@class='c-product__content']//a[text()='Krups NESCAFÉ Dolce Gusto Mini Me KP123B31']
${kavovar2}    xpath://div[@class='c-product__content']//a[text()='Sencor SES 1710 BK']
${kavovar3}    xpath://div[@class='c-product__content']//a[text()='Krups XN1001']

${Tipy na darceky}    xpath://img[@alt='Tipy na darčeky']
${Zena}    xpath://div[@class='o-wrapper']//a[@data-label='Žena']
${Vianoce}    xpath://ul[@class='c-categories-list js-occasion-filter js-filter-list closed']//span[@data-count='652']
${Range}    xpath://div[@class='c-form-cell c-form-cell--inline']//label[@for='40-100']//span[text()='40 - 100 €']
${Checkbox 40-100}    //input[@data-label='40 - 100 €']
${Kategorie Kavovary a pressa}    //div[@class='c-product__container']//a[@title='Kávovary a espressá' and @class='category-link category-count js-category-outlink']