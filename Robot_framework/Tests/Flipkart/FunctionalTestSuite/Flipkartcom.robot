*** Settings ***
Library  SeleniumLibrary
Suite Setup     log  Inside test suite Setup
Suite Teardown  log  Inside test suite Teardown
Test Setup      log  Inside test Setup
Test Teardown   log  Inside test teardown
*** Variables ***
${web_url}  https://www.google.com/
${search_flip}  https://www.flipkart.com/
*** Test Cases ***
Google search
    [Documentation]  This test is to open Google
    [Tags]  google
    Open Browser  ${web_url}  chrome
    Maximize Browser Window
    InputSearch
    Submit Form
    Click Element  class:LC20lb
Flipkart Search
    [Documentation]  This happens in the website
    [Tags]  ${search_flip}
    sleep  3s
    Click Button  class:_2KpZ6l
    Input text  class:_3704LK  Apple
    Click Button  class:L0Z3Pu
Purchase Item
    [Documentation]  This is for purchase or selecting the product
    [Tags]  Apple
    sleep  2s
    Execute JavaScript    window.scrollTo(10, document.body.scrollHeight)
    sleep  2s
    Click Element  xpath=//html/body/div/div/div[3]/div[1]/div[2]/div[4]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  3s
    Switch Window  title:
    Click Button  class:2U9uOA
    sleep  3s
    Email Address
    sleep  1s
*** Keywords ***
InputSearch
    Input Text  name:q  ${search_flip}