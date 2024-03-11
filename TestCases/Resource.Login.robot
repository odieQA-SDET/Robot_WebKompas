*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         www.kompas.com
${BROWSER}        chrome
${DELAY}          0
${VALID USER}     odiesqa@gmail.com
${VALID PASSWORD}    t3stER456
${LOGIN URL}      http://${SERVER}/
${SEARCH_KEYWORD}  BERITA


*** Keywords ***


Open Browser To Cari Berita
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Click Element   xpath://input[@id='search']

#Valid Login
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    loginToApplicationSuccess

loginToApplicationSuccess
    click element   xpath://i[@id='sso__icon__login_top']
    click link      xpath://a[@id='txt_signin']
    #visible password
    click element   xpath://body/div[2]/div[2]/div[1]/form[1]/div[2]/button[1]/img[1]
    sleep   5

Step To Search The Keyword BERITA
    Scroll Second News
    sleep   3
    Click Second News
    sleep   3
    Scroll Page News Footer Bottom
    sleep   3
    Scroll Paging Page News
    sleep   5
    Scroll Paging 1 Page News Bottom Part A
    sleep   3
    Scroll Paging 1 Page News Bottom Part B
    sleep   3
    Scroll Paging 1 Page News Bottom Part C
    sleep   3
    Scroll Paging 1 Page News Top
    sleep   4
    Close Browser

Input Keyword
    [Arguments]    ${SEARCH_KEYWORD}
    Input text     id:search   ${SEARCH_KEYWORD}

Push "Enter" To Keyboard
    Press Keys    id:search   ENTER

Go To Login Page
    Go To    ${LOGIN URL}
    loginToApplicationSuccess

Input Username
    [Arguments]    ${username}
    Input text    id:email      ${username}

Input Password
    [Arguments]    ${password}
    Input Text    id:password    ${password}

Submit Login
    click element       xpath://body/div[2]/div[2]/div[1]/form[1]/div[3]/input[1]

SELAMAT DATANG Page Should Be Open
    Page Should Contain Element     xpath://body/div[1]/div[1]/h1[1]

#Search BERITA
Scroll Second News
    scroll element into view   xpath://div[@class='gsc-resultsbox-visible']//div[2]//div[1]//div[3]//div[2]//div[3]
Click Second News
    Click element  xpath://*[@id="___gcse_0"]/div/div/div/div[5]/div[2]/div/div/div[1]/div[2]/div/div[1]/div/a

Scroll Page News Footer Bottom
    scroll element into view    xpath://p[contains(text(),'Copyright 2008 - 2023 PT. Kompas Cyber Media (Komp')]

Scroll Paging Page News
    scroll element into view    xpath://div[@class='paging__wrap clearfix']

Scroll Paging 1 Page News Bottom Part A
    scroll element into view    xpath://html/body/div[1]/div[2]/div[4]/div[1]/div[2]/div[1]/div[10]/a/div/div[2]

Scroll Paging 1 Page News Bottom Part B
    scroll element into view    xpath://html/body/div[1]/div[2]/div[4]/div[1]/div[2]/div[1]/div[5]/a/div/div[2]

Scroll Paging 1 Page News Bottom Part C
    scroll element into view    xpath://body[1]/div[1]/div[2]/div[4]/div[1]/div[2]/div[1]/div[1]/a[1]/div[1]/div[2]

Scroll Paging 1 Page News Top
    scroll element into view    xpath://img[@id='anni26-img']



