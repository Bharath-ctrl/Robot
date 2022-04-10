*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${login_name}   admin
${login_password}   12345
${mob}  876543219
*** Test Cases ***
Hospital login test
    [Documentation]  Login page
    [Tags]  admin
    open browser  http://127.0.0.1:5000    chrome
    maximize browser window
    sleep  1s
    input text  name:username   ${login_name}
    sleep  1s
    input password  name:password   ${login_password}
    sleep  1s
    click button  class:btn-success
    sleep  2s

Registration tested
    [Documentation]  Registration
    [Tags]  admin
    input text  name:name   Charlie
    sleep  1s
    input text  name:mobile  ${mob}
    sleep  1s
    input text  name:age    22
    sleep  1s
    input text  name:address  orion
    sleep  1s
    input text  name:dob    09091999
    sleep  1s
    input text  name:place  bangalore
    sleep  1s
    input text  name:pincode    567890
    sleep  1s
    click button  class:btn-success
    sleep  2s

Search Patient test
    [Documentation]  Search Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/section[1]/div/a
    sleep  2s
    input text  name:mobile  ${mob}
    sleep  2s
    click button  class:btn-primary
    sleep  2s

Viewall Patient test
    [Documentation]  Viewall Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/section[2]/div/a
    sleep  3s

Update Patient test
    [Documentation]  Update Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/section[3]/div/a
    sleep   1s
    input text  name:mobile  ${mob}
    sleep  1s
    click button    class:btn-primary
    sleep   1s
    input text  name:name   tillu
    sleep   1s
    input text  name:place   hoodi
    sleep   1s
    click button    class:btn-success
    sleep  3s

Delete Patient test
    [Documentation]  Delete Patient
    [Tags]  admin
    click link  xpath=//html/body/nav/div/section[4]/div/a
    sleep  2s
    input text  name:mobile  ${mob}
    sleep  2s
    click button  class:btn-danger
    sleep  2s
    click link  xpath=//html/body/nav/div/section[2]/div/a
    sleep  3s
    close browser

*** Keywords ***