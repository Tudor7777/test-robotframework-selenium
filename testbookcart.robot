*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${website}            https://bookcart.azurewebsites.net/

*** Test Cases ***
Navigate to book's detail page
    Open Browser    ${website}  chrome
    Click Element    (//img[@alt='Book cover image'])[2]
    Click Element    (//button[@class='mat-focus-indicator mat-raised-button mat-button-base mat-primary'])[1]
    Sleep    4
    Element Text Should Be    (//span[@id='mat-badge-content-0'])[1]    1
    Click Element    (//button[@color='primary'])[2]
    Sleep   4
    Element Text Should Be    (//span[@id='mat-badge-content-0'])[1]    2
    Close Browser