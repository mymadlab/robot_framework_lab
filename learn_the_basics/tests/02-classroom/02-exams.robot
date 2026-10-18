*** Settings ***
Library     OperatingSystem

# Custom liberaries to import
Library     HelperLibrary
Library     JSONLibrary

*** Variables ***
${JSON_FILE}    ${CURDIR}${/}test_data${/}exam_results.json
${CREATE_JSON_FILE}    ${CURDIR}${/}test_data${/}create_exam_results.json
@{STUDENTS}    Simon Says    Simone Said

*** Test Cases ***
Get Exam Results
    ${json_content}=    Get File    ${JSON_FILE}
    &{results}=    Evaluate    json.loads('''${json_content}''')    json
    Log To Console    ${\n}    no_newline=True
    FOR    ${student}    ${results}    IN    &{results}
        Log To Console    ${student}: ${results}
    END

Get Exam Results Using JSON Library
    &{results}=    Parse JSON File    ${JSON_FILE}
    Log To Console    ${\n}    no_newline=True
    FOR    ${student}    ${results}    IN    &{results}
        Log To Console    ${student}: ${results}
    END

Generate Exam Results
    [Setup]    Remove File    ${CREATE_JSON_FILE}
    VAR    ${file_content}    ${EMPTY}
    FOR    ${student}    IN    @{STUDENTS}
        ${grade}=    Generate Random Number    ${0}    ${100}
        ${file_content}=    Catenate    ${file_content}    ${student}: ${grade}%${\n}
    END
    Create File    ${CREATE_JSON_FILE}    ${file_content}