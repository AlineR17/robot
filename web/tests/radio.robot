*** Settings ***

Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Test Cases***
Selecionando por id
    Go To                           ${URL_BASE}/radios
    Select Radio Button             movies          cap
    Radio Button Should Be Set To   movies          cap

##Radio button sempre terá value
Selecionando por value
    Go To                           ${URL_BASE}/radios
    Select Radio Button             movies          guardians
    Radio Button Should Be Set To   movies          guardians