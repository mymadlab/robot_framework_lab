# Value for the SSH username should be passed via the command line
# Example usage:
# robot --variable SSH_USERNAME:your_ssh_username .

*** Settings ***
Library         SSHLibrary
Resource        ${CURDIR}${/}resources${/}apk-management.resource

Suite Setup     Open Connection And Log In With SSH Key

*** Variables ***
&{HOST}     name=192.168.1.230    port=22    alias=openssh-server-for-robot
${privatekey}    /Users/bk/.ssh/id_ecdsa

*** Test Cases ***
Get Date From Remote Host
    Switch Connection    ${HOST}[alias]
    ${date}=    Execute Command    date

    Log To Console    ${date}

Test Package Management
    APK Search    ${HOST}[alias]    ipython

*** Keywords ***
Open Connection And Log In With SSH Key
    Open Connection
    ...    ${HOST}[name]
    ...    port=${HOST}[port]
    ...    alias=${HOST}[alias]

    Login With Public Key
    ...    ${SSH_USERNAME}
    ...    ${privatekey}
