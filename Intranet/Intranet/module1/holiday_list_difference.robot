*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Home Page
    Wait Until Page Contains Element    ${Logo} 

Hovering And Clicking Holiday List
    Mouse Over      ${HoverOverHome}
    Click Element   ${ClickOnHoidayList}

Validate Holiday Page
    Element Text Should Be   ${VerifyHolidayPage}    ${HolidayPageText}
    Click Element   ${SelectYear}
    Select From List By Label   ${SelectYear}   2022
    Click Element   ${SelectBranchName}
    Select From List By Label   ${SelectBranchName}   Ahmedabad
    Click Button   ${SubmitButton}
    holidaylist     Hello
#Holiday List
#    ${list1}=    Get Holiday List    2022    Ahmedabad
#    ${list2}=    Get Holiday List    2023    Ahmedabad
#
#    ${DifferentHolidays}=   List Difference     ${list1}    ${list2}
#    Log     ${DifferentHolidays}
#
#Holiday List For Different Branches
#    ${listAhmedabad}=    Get Holiday List    2023    Ahmedabad
#    ${listPune}=    Get Holiday List    2023    Pune
#
#    ${Difference}=   List Difference     ${listAhmedabad}    ${listPune}
#    Log     ${Difference} 

    