*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Verify Visa Tab 
    Element Text Should Be      ${ValidateVisaTab}  ${VisaTabText}  
    Click Element   ${ValidateVisaTab}
    Click Element   ${SelectFirstCountry}
    Execute JavaScript    document.querySelector("${ScrollForVisaTab}").scrollIntoView(true)
    Sleep   1
    Input Text    ${SelCountry}    ${FirstCountry}
    Wait Until Element Is Visible   ${SearchedFirstCountry}
    Click Element   ${SearchedFirstCountry}
    Click Element   ${InputSecondCity}
    Input Text    ${SelCountry}    ${SecondCountry}
    Wait Until Element Is Visible    ${SearchedSecondCountry}
    Click Element   ${SearchedSecondCountry}
    Click Element      ${SelectSecondCountry}
    Input Text    ${SelCountry}    ${SecondCountry}
    Wait Until Element Is Visible   ${SearchedSecondCountry}
    Click Element   ${SearchedSecondCountry}
    Click Element   ${VisaCheckinDate} 
    Click Element   ${EnterVisa}
    Wait Until Page Contains Element   ${VerifyVisaPage}
    Go Back 
