*** Settings ***
Documentation     A test suite with a single Gherkin/BDD style test.
...
...               This test is functionally identical to the website in
...               TC1.LoginSukses.robot.robot file.
Resource          Resource.Login.robot
Test Teardown     Close Browser

*** Test Cases ***
Valid Login
    Given browser is opened to login page
    When user "odiesqa@gmail.com" logs in with password "t3stER456"
    Then SELAMAT DATANG Page Should Be Open

*** Keywords ***
Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit login