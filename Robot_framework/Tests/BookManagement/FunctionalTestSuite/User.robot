*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${web_url}  http://127.0.0.1:5000/
${email}    abcde@gmail.com
${password}     123

*** Test Cases ***
User Registration test
    [Documentation]  Registration page
    [Tags]  user
    open browser  ${web_url}    chrome
    maximize browser window
    sleep  1s
    input text  name:name   Charlie
    sleep  1s
    input text  name:address   Bangalore
    sleep  1s
    input text  name:email   ${email}
    sleep  1s
    input text  name:phone   9345678765
    sleep  1s
    input text  name:password   ${password}
    sleep  1s
    click button  class:btn-success
    sleep  2s


User Login test
    [Documentation]  Login page
    [Tags]  user
    input text  name:email  ${email}
    sleep  1s
    input text  name:password   ${password}
    sleep  1s
    click button  class:btn-success
    sleep  3s

Search Book test
    [Documentation]  Search page
    [Tags]  user
    click link  xpath=//html/body/nav[1]/section[2]/div/a
    sleep  1s
    input text  name:name   India that is bharat
    sleep  1s
    click button  class:btn-primary
    sleep  3s

Logout test
    [Documentation]  Logout page
    [Tags]  user
    click link  xpath=//html/body/nav[1]/section[3]/div/a
    sleep  3s
    close browser