*** Settings ***
Documentation     A test suite with a single Gherkin/BDD style test.
...
...               This test is functionally identical to the website in
...               TC3.SearchBerita.robot file.
Resource          Resource.Login.robot
Test Teardown     Close Browser

*** Test Cases ***
#Search and Click Berita Yang Tampil Ke-2 with Valid Keyword
Search and Click Berita Yang Tampil Ke-2 with Valid Keyword
    Given Browser is opened to cari BERITA
    When Input "BERITA" Into Search Box and Push "Enter" To Keyboard
    Then Step To Search The Keyword BERITA


*** Keywords ***
Browser is opened to cari BERITA
    Open Browser To Cari Berita

Input "${SEARCH_KEYWORD}" Into Search Box and Push "Enter" To Keyboard
    Input Keyword   "${SEARCH_KEYWORD}"
    Push "Enter" To Keyboard


