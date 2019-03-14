*** Settings ***
Documentation     This is some basic info about the whole suite
Library           SeleniumLibrary
Library          String


*** Variables ***





*** Keywords ***
Get Email
    ${faker_name}=                       Generate Random String     8    [LOWER]
    ${user}=                             Fetch From Left            test       @
    #${host}=                             Fetch From Right           test        @
    ${fake_mail}=                        Catenate	SEPARATOR=@    ${faker_name}    ${user}
    ${email}=                            Catenate	SEPARATOR=+    ${user}          ${fake_mail}
    [return]                             ${email}.com