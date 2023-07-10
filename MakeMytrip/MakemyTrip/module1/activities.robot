*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Activities Tab

    Sleep   2
#    Click Element   ${ActivitiesTab}
#    Element Text Should Be      ${ActivitiesTab}   ${ActivitiesTabText} 
#    Wait Until Element Is Visible   ${Activity}
#    Click Element   ${Activity}
#    Wait Until Element Is Visible    ${InputActivity}
#    Input Text   ${InputActivity}   ${InputActivityText}
#    Sleep   1
#    Wait Until Element Is Visible   ${SelectActivity} 
#    Click Element   ${SelectActivity} 
#    Click Button    ${SearchActivity}
#    Wait Until Element Is Visible    ${ValidateSearchedActivity} 
#    Go To   ${URL}