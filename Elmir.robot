*** Settings ***
Documentation     This is some basic info about the whole suite
Resource         recource.robot

*** Variables ***



*** Test Cases ***

1) User can serch for product
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Open the browser "Chrome"
    open browser    https://elmir.ua    chrome
#   Open the browser in full screen.
    Maximize Browser Window
#   Waiting for the "Contacts" content to load
    wait until page contains    Контакты
#   Enter in the search box the name "core i5-7400"
    input text    id=q    core i5-7400
#   Click on the search button
    click button    xpath=//*[@id="find"]
#   Waiting for five seconds
    sleep    5s
    close browser


1.1) User can serch for product
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Open the browser "Chrome"
    open browser    https://elmir.ua    chrome
#   Open the browser in full screen
    Maximize Browser Window
#   Waiting for the "Contacts" content to load
    wait until page contains    Контакты
#   Enter the name "DVD-R Verbatim" into the search box
    input text    id=q    DVD-R Verbatim
#   Click on the search button
    Press Key    name=q    \\13
#   Waiting for five seconds
    sleep    5s
    close browser

2) User can view a product
   [Documentation]    This is some basic info about the test
   [Tags]    Smoke
#   Open the browser "Chrome"
    open browser    https://elmir.ua    chrome
#   Open the browser in full screen
    Maximize Browser Window
#   Waiting for the "Contacts" content to load
    wait until page contains    Контакты
#   Enter in the search box the name "core i5-7400"
    input text    id=q    core i5-7400
#   Click on the search button
    click button    xpath=//*[@id="find"]
#   Waiting for two seconds
    sleep    2s
#   Go to product card "core i5-7400"
    click link    css=#name423799
#   Waiting for five seconds
    sleep    5s
    close browser

3) User can add 4 items to cart
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Open the browser "Chrome"
    open browser    https://elmir.ua    chrome
#   Open the browser in full screen
    Maximize Browser Window
#   Waiting for the "Contacts" content to load
    wait until page contains    Контакты
#   Enter in the search box the name "core i5-7400"
    input text    id=q    core i5-7400
#   Click on the search button
    click button    xpath=//*[@id="find"]
#   Waiting for two seconds
    sleep    2s
#   Go to product card "core i5-7400"
    click link    css=#name423799
#   Add item 1 "core i5-7400" to cart
    click element     xpath=//span[@class="tovar-price icon"]/..//a
#   Waiting for two seconds
    sleep    2s
#   Add item 2 "core i5-7400" to cart
    click element     xpath=//span[@class="tovar-price icon"]/..//a
#   Waiting for two seconds
    sleep    2s
#   Add item 3 "core i5-7400" to cart
    click element     xpath=//span[@class="tovar-price icon"]/..//a
#   Waiting for two seconds
    sleep    2s
#   Add item 4 "core i5-7400" to cart
    click element     xpath=//span[@class="tovar-price icon"]/..//a
#   Waiting for five seconds
    sleep    5s
    close browser

4) User can buy product
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Open the browser "Chrome"
    open browser    https://elmir.ua    chrome
#   Open the browser in full screen
    Maximize Browser Window
#   Waiting for the "Contacts" content to load
    wait until page contains    Контакты


#   Enter in the search box the name "core i5-7400"
    input text    id=q    core i5-7400
#   Click on the search button
    click button    xpath=//*[@id="find"]
#   Waiting for two seconds
    sleep    2s


#   Go to product card "core i5-7400"
    click link    css=#name423799
#   Add item 1 "core i5-7400" to cart
    click element     xpath=//span[@class="tovar-price icon"]/..//a
    sleep    2
#   Go to the basket
    click element     xpath=//*[@id="basket-text"]
    sleep    2s
#   Click on the checkout button
    click element     xpath=//*[@id="show-steps"]
    sleep    2s

#   Enter information in the form "Information about the buyer:"
    input text    id=surname    Зеленский
    sleep    1
    input text    id=name    Владимир
    sleep    1
    input text    id=patronymic    Александрович
    sleep    1
    input text    id=email    mr_president@gmail.com
    sleep    1
    input text    id=phone    1234567
    sleep    1

#   City selection
    click element     xpath=//*[@id="form-step-1"]/div/table/tbody/tr[6]/td[2]/span
    sleep    4
#   Waiting
    wait until element is visible            //*[@id="sc-1"]
#   Choosing Kharkov
    click element     xpath=//*[@id="sc-1"]
    sleep    2
#   Press the button to select
    click button    xpath=//*[@id="change-city-form"]/form/div/button
    sleep    2

#   Enter comments
    input text    id=comment    Vova mi tebya gdem...
    sleep    2
#   Click on the button for delivery
    click button    xpath=//*[@id="next-step-1"]
    sleep    4

#   Delivery:
#   Choosing Pickup
    click button    xpath=//*[@id="dt-1"]
    sleep    5
#   г. Харьков, ул. Алчевских, 36
    click button    xpath=//*[@id="post_4687"]
    sleep    2
#   To pay
    click button    xpath=//*[@id="next-step-2"]
    sleep    2
#   In cash
    click button   xpath=//*[@id="payment_0"]
    sleep    2
#   Check data
    click button    xpath=//*[@id="next-step-3"]
    sleep    2
#   Remove sending the letter on mail
    click button    xpath=//*[@id="email_notify"]
    sleep    2
#   Send an order
    click button    xpath=//*[@id="next-step-4"]
    sleep    2
    close browser

5) User can back call
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Open the browser "Chrome"
    open browser    https://elmir.ua    chrome
#   Open the browser in full screen
    Maximize Browser Window
#   Waiting for the "Contacts" content to load
    wait until page contains    Контакты
#   Call me back
    sleep    5s
#   Scroll to the desired button on the screen
    execute javascript  window.scrollTo(0, 180)
#   execute javascript  window.scrollTo(0, document.body.scrollHeight)
    click element    xpath: //*[@id="acallback"]
    sleep    3s
#   Enter the number
    input text    id=special-tel    671231234
    sleep    3s
#   Click on the search button
    click button    xpath=//*[@id="cb-form"]/div[5]/input
    sleep    3s
    close browser

6) Registration
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Open the browser "Chrome"
    open browser    https://elmir.ua/registration.html    chrome
#   Open the browser in full screen
    Maximize Browser Window
#   Waiting for the "Contacts" content to load
    wait until page contains    Контакты
#   E-mail
    ${em}=                          Get Email
    log to console                    ${em}
    #Set Suite Variable                  ${REG_EMAIL}                ${em}

    input text    id=email    ${em}
    sleep    1s
#   Password
    input text    id=password    $12345678
    sleep    1s
#   To register
    click button    xpath: //*[@id="do-registration"]
    sleep    3s
    close browser


7) User can
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Open the browser "Chrome"
    open browser    https://elmir.ua    chrome
#   Open the browser in full screen
    Maximize Browser Window
#   Waiting for the "Contacts" content to load
    wait until page contains    Контакты
    click element       xpath: //*[contains(text(), "Доставка")]
    sleep    3s
    click element       xpath: //*[contains(text(), "Сервис")]
    sleep    3s
    click element       xpath: //*[contains(text(), "Оплата")]
    sleep    3s
    click element       xpath: //*[contains(text(), "Контакты")]
    sleep    3s
    click element       xpath: //*[contains(text(), "Безопасность")]
    sleep    3s
    click element       xpath: //*[contains(text(), "Вакансии")]
    sleep    3s
    click element       xpath: //*[contains(text(), "Гарантия")]
    sleep    3s
    click element       xpath: //*[contains(text(), "Поиск по сайт")]
    sleep    3s
    click element       xpath: //*[contains(text(), "Почему у нас покупают?")]
    sleep    3s
#   scroll To "Услуги HDD"
    execute javascript  window.scrollTo(0, document.body.scrollHeight)
    sleep    3s
    click element       xpath: //*[contains(text(), "Услуги HDD")]
    sleep    3s
    click element       xpath: //*[contains(text(), "Техническая поддержка и услуги")]
    sleep    3s
    close browser



    Last commit