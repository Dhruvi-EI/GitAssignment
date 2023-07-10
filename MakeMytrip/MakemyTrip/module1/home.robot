*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Logo   
    Wait Until Element Is Visible   ${Logo}
    Click Element   ${Logo}

Validate Footer
    Wait Until Element Is Visible   ${Logo}
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true);
    Sleep   1.5
    Click Element    ${Twitter}
    Wait Until Element Is Visible    ${ValidateTwitterPage} 
    Go Back
    Sleep   1
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true);
    Sleep   1
    Wait Until Element Is Visible   ${Logo}
    Click Element   ${Facebook} 
    Wait Until Element Is Visible    ${ValidateFacebookPage} 
    Go Back
