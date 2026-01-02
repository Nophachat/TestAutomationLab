*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    file:///C:/lab4/TestAutomationLab/StarterFiles/Registration.html
${SUCCESS_FRAGMENT}    Success.html

*** Test Cases ***
TC_01 Open Workshop Registration Page
    Open Browser    ${URL}    chrome
    Title Should Be    Registration
    Page Should Contain    Workshop Registration
    Capture Page Screenshot    TC_01_Open_Registration.png
    Close Browser

TC_02 Register Success With Organization
    Open Browser    ${URL}    chrome
    Input Text    firstname    Somyod
    Input Text    lastname     Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Title Should Be    Success
    Wait Until Location Contains    ${SUCCESS_FRAGMENT}    timeout=10s
    Capture Page Screenshot    TC_02_Success_With_Org.png
    Close Browser

TC_03 Register Success Without Organization
    Open Browser    ${URL}    chrome
    Input Text    firstname    Somyod
    Input Text    lastname     Sodsai
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Title Should Be    Success
    Wait Until Location Contains    ${SUCCESS_FRAGMENT}    timeout=10s
    Capture Page Screenshot    TC_03_Success_No_Org.png
    Close Browser

TC_04 Register Fail Empty First Name
    Open Browser    ${URL}    chrome
    Input Text    lastname     Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Page Should Contain    Please enter your first name!!
    Capture Page Screenshot    TC_04_Empty_Firstname.png
    Close Browser

TC_05 Register Fail Empty Last Name
    Open Browser    ${URL}    chrome
    Input Text    firstname    Somyod
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Page Should Contain    Please enter your last name!!
    Capture Page Screenshot    TC_05_Empty_Lastname.png
    Close Browser

TC_06 Register Fail Empty First And Last Name
    Open Browser    ${URL}    chrome
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Page Should Contain    Please enter your name!!
    Capture Page Screenshot    TC_06_Empty_Name.png
    Close Browser

TC_07 Register Fail Empty Email
    Open Browser    ${URL}    chrome
    Input Text    firstname    Somyod
    Input Text    lastname     Sodsai
    Input Text    organization    CS KKU
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Page Should Contain    Please enter your email!!
    Capture Page Screenshot    TC_07_Empty_Email.png
    Close Browser

TC_08 Register Fail Empty Phone Number
    Open Browser    ${URL}    chrome
    Input Text    firstname    Somyod
    Input Text    lastname     Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Click Button    registerButton
    Page Should Contain    Please enter your phone number!!
    Capture Page Screenshot    TC_08_Empty_Phone.png
    Close Browser

TC_09 Register Fail Invalid Phone Number
    Open Browser    ${URL}    chrome
    Input Text    firstname    Somyod
    Input Text    lastname     Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    1234
    Click Button    registerButton
    Page Should Contain    Please enter a valid phone number!!
    Capture Page Screenshot    TC_09_Invalid_Phone.png
    Close Browser








