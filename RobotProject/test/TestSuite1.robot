**Settings**
Library  SeleniumLibrary
Suite Setup     Log    Testsuite wird gestartet
Suite Teardown  Log    Der Test ist beendet
Default Tags    letskodit

*** Test Cases ***
LoginTest
   [Documentation]     This is login test to the Site https://letskodeit.teachable.com
    [Tags]         LoginTest
    open Browser     ${LoginURL}    chrome
    Set Browser Implicit Wait    5
    Login
    LoginData
    Commit
    Sleep             2
    Close Browser
    

lookingForCarTest
    [Documentation]     A car model with orange color well be selected on the website
    [Tags]             lookingForCarTest
    open Browser     ${Practice Page}    chrome
    Set Browser Implicit Wait    5
    Radio_btn_benz
    Select_value_benz
    Select_color_orange
    Select_checkbox_benz
    Close Browser
    
       
*** Variables ***

${LoginURL}          https://letskodeit.teachable.com
${Practice Page}     https://letskodeit.teachable.com/p/practice
${LoginData}        jamal_oubaouih@yahoo.de   admin123    

*** Keywords ***
Login      Click Element     Link= Login
    
LoginData  Input Text        xpath=//input[@id='user_email']     ${LoginData}[0]
           Input Password    xpath=//input[@id='user_password']  ${LoginData}[1]
                
Commit     Click Button      name= commit
    
Radio_btn_benz              Click Element                    xpath=//input[@id='benzradio']
Select_value_benz           Click Element                    xpath=//option[contains(text(),'Benz')]
Select_color_orange         Click Element                    xpath =//option[contains(text(),'Orange')]
Select_checkbox_benz        Click Element                    xpath =//input[@id='benzcheck']
    

    

    