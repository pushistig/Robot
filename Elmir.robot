*** Settings ***
Documentation     This is some basic info about the whole suite
Resource         recource.robot

*** Variables ***



*** Test Cases ***

1) User can serch for product
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Открываем браузер "Хром"
    open browser    https://elmir.ua    chrome
#   Раскрываем браузер на весь экран
    Maximize Browser Window
#   Ждём пока загрузится контент "Контакты"
    wait until page contains    Контакты
#   Вводим в поисковую строку название "core i5-7400"
    input text    id=q    core i5-7400
#   Нажимаем на кнопку поиска
    click button    xpath=//*[@id="find"]
#   Ждём пять секунд
    sleep    5s
#   Закрываем браузер
    close browser


1.1) User can serch for product
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Открываем браузер "Хром"
    open browser    https://elmir.ua    chrome
#   Раскрываем браузер на весь экран
    Maximize Browser Window
#   Ждём пока загрузится контент "Контакты"
    wait until page contains    Контакты
#   Вводим в поисковую строку название "DVD-R Verbatim"
    input text    id=q    DVD-R Verbatim
#   Нажимаем на кнопку поиска
    Press Key    name=q    \\13
#   Ждём пять секунд
    sleep    5s
#   Закрываем браузер
    close browser

2) User can view a product
   [Documentation]    This is some basic info about the test
   [Tags]    Smoke
#  Открываем браузер "Хром"
   open browser    https://elmir.ua    chrome
#  Раскрываем браузер на весь экран
   Maximize Browser Window
#  Ждём пока загрузится контент "Контакты"
   wait until page contains    Контакты
#  Вводим в поисковую строку название "core i5-7400"
   input text    id=q    core i5-7400
#  Нажимаем на кнопку поиска
   click button    xpath=//*[@id="find"]
#  Ждём две секунд
   sleep    2s
#  Перейти в карточку товара "core i5-7400"
   click link    css=#name423799
#  Ждём пять секунд
   sleep    5s
#  Закрываем браузер
   close browser

3) User can add 4 items to cart
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Открываем браузер "Хром"
    open browser    https://elmir.ua    chrome
#   Раскрываем браузер на весь экран
    Maximize Browser Window
#   Ждём пока загрузится контент "Контакты"
    wait until page contains    Контакты
#   Вводим в поисковую строку название "core i5-7400"
    input text    id=q    core i5-7400
#   Нажимаем на кнопку поиска
    click button    xpath=//*[@id="find"]
#   Ждём две секунд
    sleep    2s
#   Перейти в карточку товара "core i5-7400"
    click link    css=#name423799
#   Добавить в корзину товар 1 "core i5-7400"
    click element     xpath=//span[@class="tovar-price icon"]/..//a
#   Ждём две секунд
    sleep    2s
#   Добавить в корзину товар 2 "core i5-7400"
    click element     xpath=//span[@class="tovar-price icon"]/..//a
#   Ждём две секунд
    sleep    2s
#   Добавить в корзину товар 3 "core i5-7400"
    click element     xpath=//span[@class="tovar-price icon"]/..//a
#   Ждём две секунд
    sleep    2s
#   Добавить в корзину товар 3 "core i5-7400"
    click element     xpath=//span[@class="tovar-price icon"]/..//a
#   Ждём пять секунд
    sleep    5s
    #  Закрываем браузер
    close browser

4) User can buy product
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Открываем браузер "Хром"
    open browser    https://elmir.ua    chrome
#   Раскрываем браузер на весь экран
    Maximize Browser Window
#   Ждём пока загрузится контент "Контакты"
    wait until page contains    Контакты


#   Вводим в поисковую строку название "core i5-7400"
    input text    id=q    core i5-7400
#   Нажимаем на кнопку поиска
    click button    xpath=//*[@id="find"]
    sleep    2s


#   Перейти в карточку товара "core i5-7400"
    click link    css=#name423799
#   Добавить в корзину товар 1 "core i5-7400"
    click element     xpath=//span[@class="tovar-price icon"]/..//a
    sleep    2
#   Переходим в корзину
    click element     xpath=//*[@id="basket-text"]
    sleep    2s
#   Нажимаем на кнопку оформить заказ
    click element     xpath=//*[@id="show-steps"]
    sleep    2s

#   Ввод информации в форму "Данные о покупателе:"
#   Вводим в поисковую строку название "core i5-7400"
    input text    id=surname    Зеленский
    sleep    1
#   Вводим в поисковую строку название "core i5-7400"
    input text    id=name    Владимир
    sleep    1
#   Вводим в поисковую строку название "core i5-7400"
    input text    id=patronymic    Александрович
    sleep    1
#   Вводим в поисковую строку название "core i5-7400"
    input text    id=email    mr_president@gmail.com
    sleep    1
#   Вводим в поисковую строку название "core i5-7400"
    input text    id=phone    1234567
    sleep    1

#   Выбор города
    click element     xpath=//*[@id="form-step-1"]/div/table/tbody/tr[6]/td[2]/span
    sleep    4
#   Ожидание
    wait until element is visible            //*[@id="sc-1"]
#   Выбираем  Харьков
    click element     xpath=//*[@id="sc-1"]
    sleep    2
#   Нажимаем на кнопку выбрать
    click button    xpath=//*[@id="change-city-form"]/form/div/button
    sleep    2

#   Вводим коммент
    input text    id=comment    Vova mi tebya gdem...
    sleep    2
#   Нажимаем на кнопку к доставке
    click button    xpath=//*[@id="next-step-1"]
    sleep    4

#   Доставка:
#   Самовывоз
    click button    xpath=//*[@id="dt-1"]
    sleep    5
#   г. Харьков, ул. Алчевских, 36
    click button    xpath=//*[@id="post_4687"]
    sleep    2
#   К оплате
    click button    xpath=//*[@id="next-step-2"]
    sleep    2
#   Наличными
    click button   xpath=//*[@id="payment_0"]
    sleep    2
#   Проверить данные
    click button    xpath=//*[@id="next-step-3"]
    sleep    2
#   Убираем отправку письма на почту
    click button    xpath=//*[@id="email_notify"]
    sleep    2
#   Отправить заказ
    click button    xpath=//*[@id="next-step-4"]
    sleep    2
#   Закрываем браузер
    close browser

5) User can back call
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Открываем браузер "Хром"
    open browser    https://elmir.ua    chrome
#   Раскрываем браузер на весь экран
    Maximize Browser Window
#   Ждём пока загрузится контент "Контакты"
    wait until page contains    Контакты
#   Перезвонить мне
    sleep    5s
#   Вводим номер
    execute javascript  window.scrollTo(0, document.body.scrollHeight)
    click element    xpath: //span[@id="acallback"]
    sleep    3s
    input text    id=special-tel    671231234
    sleep    3s
#   Нажимаем на кнопку поиска
    click button    xpath=//*[@id="cb-form"]/div[5]/input
    sleep    3s

#   Закрываем браузер
    close browser

6) Registration
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Открываем браузер "Хром"
    open browser    https://elmir.ua/registration.html    chrome
#   Раскрываем браузер на весь экран
    Maximize Browser Window
#   Ждём пока загрузится контент "Контакты"
    wait until page contains    Контакты
#   E-mail
    ${em}=                          Get Email
    log to console                    ${em}
    #Set Suite Variable                  ${REG_EMAIL}                ${em}

    input text    id=email    ${em}
#   sleep    1s
#   Password
    input text    id=password    $12345678
    sleep    1s
#   Зарегистрироваться
    click button    xpath: //*[@id="do-registration"]
    sleep    3s

#   Закрываем браузер
    close browser




7) User can
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Открываем браузер "Хром"
    open browser    https://elmir.ua    chrome
#   Раскрываем браузер на весь экран
    Maximize Browser Window
#   Ждём пока загрузится контент "Контакты"
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
    execute javascript  window.scrollTo(0, document.body.scrollHeight)
    sleep    3s
    click element       xpath: //*[contains(text(), "Услуги HDD")]
    sleep    3s
    click element       xpath: //*[contains(text(), "Техническая поддержка и услуги")]
    sleep    3s
#   Закрываем браузер
    close browser


