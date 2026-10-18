*** Settings ***
Library    OperatingSystem
Library    String

*** Keywords ***
Print Multiple Names
    [Arguments]    @{names}
		Log To Console    ${\n}    no_newline=True # Required to ensure first name appears on a new line without an empty line
		FOR    ${name}    IN    @{names}
		    Log To Console   ${name}
		END

Read Names From File
    [Arguments]    ${file_path}
    ${names}=    Get File    ${file_path}
		@{names}=    Split to lines    ${names}
    RETURN    @{names}
