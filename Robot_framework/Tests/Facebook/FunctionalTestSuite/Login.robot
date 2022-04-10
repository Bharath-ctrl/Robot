*** Settings ***
Library   SeleniumLibrary
*** Variables ***
${web_url}  https://www.google.com/
${search_ama}  Amazon.in
*** Test Cases ***
Login Screen
    [Documentation]  this is a login screen
    [Tags]  users
    Log  hello

Registration screen
    [Documentation]  this is for registration
    [Tags]  users
    Log  Finish

Admin login screen
    [Documentation]  this is for admin
    [Tags]  admin
    Log  Admin

Google Test
    [Documentation]  Google search
    [Tags]  Internet
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    Inputsearch
    Submit Form
    Close Browser

*** Keywords ***
Inputsearch
    Input Text  name:q  ${search_ama}
