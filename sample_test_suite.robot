*** Settings ***
Library           CryptoLibrary    variable_decryption=True
Library           SeleniumLibrary
Suite Teardown    Close Browser


*** Variables ***
${senha}    crypt:ZY0RvpKOTA2a2DRRVfuCJ07iZNMOUriPyPeb1bp7X0SPHi84pfYORHp/mGw+FattY76ERVUC+W0=

*** Test Cases ***
First example test case
    Open Browser    https://www.exemplo.com/    gc
    Maximize Browser Window
    Input Text    id:user-name    standard_user
    Input Password    id:password    ${senha}
    Click Element    id:login-button
    Wait Until Page Contains   Products

   
