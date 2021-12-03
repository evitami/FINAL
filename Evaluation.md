# Hodnotenie

### Celkovo

---
- Replikovatelnost testu: 0:5    (PASS:FAIL)
  - **keyword**: `Click Element    ${Kategorie Kavovary a pressa}`
  - **chyba**: Element with locator '//div[@class='c-product__container']//a[@title='Kávovary a espressá' and @class='category-link category-count js-category-outlink']' not found.
  - **mozne riesenie**: oprava lokatora, vyzera ze je velmi zle zadefinovany 
    - mozno chyba rozlisenia ako takeho
---
  
- Z pohladu testingu:
  - test case je dost neprehladny
  - pre cloveka co nerobi s automatizaciou je to asi dost matuce co sa tam deje
    - hlavne tie lokalizacie xpathmi
  - na najvyssej urovni chceme lahko zrozumitelny text

- Z pohladu automatizacie:
  - neviem dokoncit full run ani 1
  - `Sleep` je moc pouzivany, treba to nahradit `Wait`-ami, strasne to bije do oci
  - co sa tyka tych padov:
    - vyhoda je ze to pada na to istom, malo by to byt jednoducho opravitelne

### Keywords subor

- `general`
  - ak mame v keywordoch keyword, ktory nerobi nic ine iba napr `Click Element` je otazna jeho pridana hodnota
    - idealne ak robim taketo nieco, zaroven ako spravim click, je dobre pridat aj wait, ci ten element existuje
      - eg. `keywords.robot` riadok 16-17
        - pridal by som tam este `Wait Until Page Contains Element    xpath=//`
        - tym zaistim, ze ten element na ktory idem kliknut realne existuje
        - zaroven je to aj dobra zasada, ze pred tym ako idem s elementom robit, si nan pockam (Wait)
          - hlavne v pripade ak je to prvy krat co nan pristupujem
  - moc `Sleep`-ov

- Nepouzival by som `Maximize Browser Window`
  - moze to sposobovat to, ze test u mna nejde spustit (zle lokatory)
  - doporucoval som pouzivat `Set Window Size` ktory zabezpeci rovnake rozlisenie na kazdom pocitaci
  
- Keyword: `Check If Price Is In Correct Range`
  - `Should Be True` ide pouzit aj ako `Should Be True    40 < ${amount} < 100
    - je to to iste, a je to troska kratsie
  - paci sa mi ze pouzivas python, aspon troska na upravu tych variable
  - ak nieco opakujes viac ako 1x je dobre:
    - vytvorit novy keyword, ktory to pokryje a ten zavolat 3x
    - pouzit FOR aby si nereplikovala to iste dokola
  
- Keyword: `Remove item from cart and check if it was removed`
  - keyword je neprepouzitelny a dost genericky
    - lepsie by bolo ak by mal keyword argument, aby sa dal prepouzit a mazal konkretny produkt
  
- Keyword: `Remove all items and check cart is empty`
  - v zasade opakuje to co keyword nad nim 2x
  - zase, treba sa snazit robit prepouzitelne keywordy a pouzivat ich

### Variables subor

- tu v zasade ziadny problem
- uvazoval by som, kedze vacsinu veci identifikujes po lokalizacii pouzit priamo lokalizaciu v keywordoch
  - xpathy potom robit iba tak, ze by nahradzali data-label

### Test Cases subor

- nazov testcasu je zvlastny `Open Heureka Page`
  - nie je to to, co sa v tom teste deje
- moc `Sleep` keywordov, nie je spravne konsolidovat stav sleepmi
  - treba pouzivat `Wait`-keywordy
- abstrakcia je priliz nizka
  - pouzivas moc `low level` keywordov, ktore mozu byt pre nie automatizera matuce
  - miesa sa spravna s nespravnou
- Keyword: `Switch to tab` by default switchuje do `MAIN` okna, to je to co sa otvorilo ako prve
  - `NEW` je posledne otvorene okno, ak nechces pouzivat **title=** na switch do noveho okna

### Readme.md subor

  - formatovanie prijemne, dobre sa cita
  - chybajuce informacie, zaroven chybajuci requirements.txt subor
  - nieje dobre doporucit urcitu verziu chromedrivera
    - chromedriver je uzko zviazany s chrome, takze ak niekomu poviem aby pouzil 96 chromedriver, musi mat zodpovedajuci chrome

### requirements.txt subor

- uplne chybajuce requirements.txt file
- moze to byt silno matuce, kedze bez toho suboru neviem co vsetko je potrebne na spustenie testov
- je to spisane v readme, ako `install requirements` ale nikde niesu vypisane

### Git repository

- repositar je pekne cisty
- niesu v nom zbytocne subory
- ziadne skryte konfiguracie