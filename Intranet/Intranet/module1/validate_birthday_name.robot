*** Settings ***  
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar Chovatiya

*** Test Cases ***
Validate Home Page
    Wait Until Page Contains Element    ${Logo}

Hover And Click On Birthday
    Mouse Over      ${Home}
    Wait Until Page Contains Element    ${Birthday}
    Click Element   ${Birthday}

Validating Page
    Element Should Contain  ${BirthdayTextpath}   ${BirthdayText}     

Select Today Date
    Click Element   ${DateDropdown}
    Click Element   ${SelectTodayDate}

Get Data
    Wait Until Page Contains Element    ${BdayNames}
    ${Elements} =  Get WebElements     ${BdayNames}
    @{BdayList} =      Create List 
    Remove from List    ${Elements}     0

    FOR  ${Element}  IN      @{Elements}
        Log    ${Element.text}
        Append To List   ${BdayList}   ${Element.text}
    END
    Set Suite Variable     ${BdayList}

Go Back To Home Page
    Click Link  ${BackToHomePage}

Validate Home Page
    Wait Until Page Contains Element    ${Logo}

Scrolling And Click Element
    Scroll Element Into View      ${ScrollPath}
    ${Elements} =  Get WebElements   ${BirthdayUsername}
    @{Birthdaylist} =      Create List 
    
    FOR  ${Element}  IN      @{Elements}
        Log    ${Element.text}
        Append To List      ${Birthdaylist}   ${Element.text}
        Sleep   2.5s
    END
    Set Suite Variable     ${Birthdaylist}

Birthday Verification
    List Should Contain Sub List     ${Birthdaylist}       ${BdayList}
