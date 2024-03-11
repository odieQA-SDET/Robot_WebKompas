*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          Resource.Login.robot

*** Test Cases ***
Valid Login
   Open Browser To Login Page
   Input Username   odiesqa@gmail.com
   Input Password   t3stER456
   Submit Login
   SELAMAT DATANG Page Should Be Open
   sleep   4
   [Teardown]    Close Browser




