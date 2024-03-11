*** Settings ***
Documentation     A test suite with a single test for search berita.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          Resource.Login.robot

*** Test Cases ***
# Positive Test Case: Search for Valid Keyword and Click Berita Yang Tampil Ke-2
Search and Click Berita Yang Tampil Ke-2 with Valid Keyword
    Open Browser To Cari Berita
    Click Element   xpath://input[@id='search']
    Input Text   id:search   ${SEARCH_KEYWORD}
    Press Keys  id:search  ENTER
    sleep   4
    Step To Search The Keyword BERITA


