*** Settings ***
Documentation     This is some basic info about the whole suite
Resource         recource.robot

*** Variables ***



*** Test Cases ***

#1) Logged in
#    [Documentation]    This is some basic info about the test
#    [Tags]    Smoke
##   Открываем браузер "Хром"
#    open browser    https://rozetka.com.ua/    chrome
##   Раскрываем браузер на весь экран
#    Maximize Browser Window
##   Ждём пока загрузится контент "Контакты"
#    wait until page contains    Контакты
#
##   Входим в Личный кабинет
#    click element   xpath: //*[contains(text(), "войдите в личный кабинет")]
#    sleep    2s
##   Вводим в поисковую строку название "core i5-7400"
#    input text    id=auth_email    bboommbb@gmail.com
#    sleep    2s
##   Вводим в поисковую строку название "core i5-7400"
#    input text    id=auth_pass    $Rozetka31415
#    sleep    2s
##   Нажимаем кнопку войти
#    click element   xpath: //*[contains(text(), "Войти")]
#    sleep    2s
#    #   Закрываем браузер
#    close browser
#

2) Logged in
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
#   Открываем браузер "Хром"
    Open Chrome With Options


    open browser    https://ru-ru.facebook.com/    chrome
#   Раскрываем браузер на весь экран
    Maximize Browser Window
#   Ждём пока загрузится контент "Электронный адрес или номер телефона"
    wait until page contains    Электронный адрес или номер телефона



#    Входим в Личный кабинет
    input text    id=email    bboommbb@gmail.com
    sleep    1s
    input text    id=pass    Zipa5nakShiegoo5
    sleep    1s
    click button    xpath=//*[@data-testid="royal_login_button"]
    sleep    5s



##    Уже Вошли
#    click element   xpath: //*[contains(text(), "Поиск")]
#    input text      ROZETKA

#    click button    xpath=//*[@data-testid="search_input"]
#    input text    data-testid=search_input    ROZETKA
#    sleep    2s
#    click button    xpath=//*[@id="js_i"]
#    sleep    2s







*** Keywords ***
Open Chrome With Options
     ${options}=  Evaluate  sys.modules['selenium2.webdriver'].ChromeOptions()  sys, selenium.webdriver
     Call Method    ${options}    add_argument      start-maximized
     Call Method    ${options}    add_argument      disable-extensions
     Call Method    ${options}    add_argument      disable-notifications
     Create WebDriver  Chrome    chrome_options=${options}
