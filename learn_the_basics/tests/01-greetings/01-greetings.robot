*** Settings ***
Resource    ${CURDIR}${/}resources${/}greetings.resource


*** Variables ***
${YOUR_NAME}    Simon Says


*** Test Cases ***
Greetings from Robot
    [Documentation]    Prints the value of the YOUR_NAME variable that is defined in this file.
    [Tags]    ubuntu
    Print Your Name    ${YOUR_NAME}

Greetings Default
    [Documentation]    Prints the default value defined in the keyword.
    [Tags]    gentoo
    Print Your Name

Greetings from Resource
    [Documentation]    Prints the value of the YOUR_NAME_RESOURCE variable that is defined in the resource file.
    [Tags]    centos
    [Setup]    Log    Initiating Greetings from Resource Test
    Print Your Name    ${YOUR_NAME_RESOURCE}
    [Teardown]    Log    Finished Greetings from Resource Test

Greetings from init
    [Documentation]    Prints the value of the YOUR_NAME_INIT variable that is defined in the global init file.
    [Tags]    centos
    Print Your Name    ${YOUR_NAME_INIT}
