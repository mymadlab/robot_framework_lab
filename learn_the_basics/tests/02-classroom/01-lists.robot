*** Settings ***
Resource    ${CURDIR}${/}resources${/}lists.resource


*** Variables ***
@{NAMES}    Simon Says    Simone Says    Simone Said    Simon Said


*** Test Cases ***
Print list of names
    [Documentation]    Print the list of names using the keyword defined in the resource file
    Print Multiple Names    @{NAMES}

Print list of names from file
    [Documentation]    Print the list of names read from a file using the keyword defined in the resource file
    ${names}=    Read Names From File    ${CURDIR}${/}test_data${/}students.txt
    Print Multiple Names    @{names}
