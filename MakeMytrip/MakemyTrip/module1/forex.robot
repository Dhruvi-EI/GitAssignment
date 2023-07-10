*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Forex Tab
    Sleep   2
    Wait Until Element Is Visible   ${ForexTab} 
    Click Element   ${ForexTab} 
    Element Text Should Be      ${ForexTab}    ${ForexTabText}
    Page Should Contain    ${ForexPageText}
    Wait Until Element Is Visible   ${ForexGetStarted}
    Click Element   ${ForexGetStarted}
    Sleep   1
    Wait Until Element Is Visible     ${ValidateGetStartedPage}
    Go Back
    Wait Until Element Is Visible   ${Logo}