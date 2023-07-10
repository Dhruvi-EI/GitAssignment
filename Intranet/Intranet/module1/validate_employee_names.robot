*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar Chovatiya

*** Test Cases ***
Validate Home Page
    Wait Until Page Contains Element    ${Logo} 

Search Name
    Click Element   ${SearchName}
    Input Text      ${SearchName}    ${Name}
    Press Keys     ${SearchName}     ENTER

Validate Name Page
    Wait Until Page Contains Element    ${ConfirmEmpPage}

Validate Name
    ${Elements} =  Get WebElements   ${GetNames}
    ${TotalNames}=      Get Length      ${Elements}
    FOR  ${i}  IN RANGE    ${TotalNames}
        Element Should Contain      ${GetNames}     ${Name}
    END
 
