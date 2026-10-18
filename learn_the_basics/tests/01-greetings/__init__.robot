*** Settings ***
Suite Setup         Global Suite Setup
Suite Teardown      Global Suite Teardown

*** Variables ***
${YOUR_NAME_INIT}       Simon said

*** Keywords ***
Global Suite Setup
    Log    Our Robot awesomeness begins!
    VAR    ${YOUR_NAME_INIT}    $YOUR_NAME_INIT}    scope=GLOBAL

Global Suite Teardown
    Log    The end of the awesomeness!
