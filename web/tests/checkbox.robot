*** Settings ***

Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Variables***
${check_thor}       id:thor
${check_ironman}    css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]

***Test Cases***
Marcando opção com id
    Go To                           ${URL_BASE}/checkboxes
    Select Checkbox                 ${check_thor} 
    Checkbox Should Be Selected     ${check_thor} 

Marcando opção com CSS selector
    [tags]      ironman
    Go To                           ${URL_BASE}/checkboxes
    Select Checkbox                 ${check_ironman}
    Checkbox Should Be Selected     ${check_ironman}

Marcando opção com Xpath
    [tags]      blackpanther
    Go To                           ${URL_BASE}/checkboxes
    Select Checkbox                 ${check_panther}
    Checkbox Should Be Selected     ${check_panther}
    


