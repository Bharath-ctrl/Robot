*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}   http://127.0.0.1:5000
${login_name}   admin
${login_password}   1234

*** Test Cases ***
Admin login test
    [Documentation]  Login page
    [Tags]  admin
    open browser   ${web_url}     chrome
    maximize browser window
    sleep  1s
    input text  name:username   ${login_name}
    sleep  1s
    input password  name:password   ${login_password}
    sleep  1s
    click button  class:btn-success
    sleep   3s


AddBook Admin test
    [Documentation]  Addbook
    [Tags]  admin
    click element  class:btn-outline-primary
    sleep  1s
    input text  name:name   Psychology
    sleep  1s
    input text  name:author  charlie
    sleep  1s
    input text  name:category   Personality
    sleep  1s
    input text  name:price  499
    sleep  1s
    input text  name:publisher  Edurex
    sleep  1s
    click button  class:btn-success
    sleep  4s


Update Book test
    [Documentation]  Updatebook page
    [Tags]  admin
    click element  class:btn-outline-info
    sleep  1s
    input text  name:name   Psychology
    sleep  1s
    click button  class:btn-primary
    sleep  3s
    input text  name:author     wilson
    sleep  1s
    input text  name:category   personality
    sleep  1s
    input text  name:price  799
    sleep  1s
    input text  name:publisher  Edurex
    sleep  1s
    click button  class:btn-success
    sleep  2s

ViewBook test
    [Documentation]  View Book
    [Tags]  admin
    click link  xpath=//html/body/nav/nav[1]/section[2]/a
    sleep  3s

Delete Book test
    [Documentation]  Delete book
    [Tags]  admin
    click link  xpath=//html/body/nav[1]/section[4]/a
    sleep  1s
    input text  name:name   Psychology
    sleep  1s
    click button  class:btn-danger
    sleep  3s

Log Out test
    [Documentation]  Delete book
    [Tags]  admin
    click element  class:btn-outline-danger
    sleep  3s
    close browser


*** Keywords ***