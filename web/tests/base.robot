*** Settings ***

Library         SeleniumLibrary

***Variables***
${URL_BASE}     http://training-wheels-protocol.herokuapp.com/

***Keywords***
Nova sessão
    Open Browser                    ${URL_BASE}      chrome      options=add_experimental_option('excludeSwitches', ['enable-logging'])

Encerra sessão
    Capture Page Screenshot
    Close Browser