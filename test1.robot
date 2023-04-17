*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${website}            https://www.saucedemo.com/

*** Test Cases ***
Complete the user and pass
        Open Browser    ${website}  chrome
        Input Text        id:user-name        standard_user
        Input Text        id:password        secret_sauce
        Sleep    4
        Click Element        id:login-button
        Close Browser