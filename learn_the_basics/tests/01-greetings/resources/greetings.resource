*** Variables ***
${YOUR_NAME_RESOURCE}    Simone Says

*** Keywords ***
Print Your Name
    [Arguments]    ${your_name}=Simone Said
    Log    ${your_name}
