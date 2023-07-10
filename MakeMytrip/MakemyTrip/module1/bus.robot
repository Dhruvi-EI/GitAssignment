*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Bus Tab
    Click Element   ${BusTab}
    Element Text Should Be      ${BusTab}   ${BusTabText} 
    Sleep   1
    Click Element   ${FlightFrom}
    Wait Until Element Is Visible   ${BusFromCity}
    Click Element   ${BusFromCity}
    Wait Until Element Is Visible   ${BusToCity}
    Click Element   ${BusToCity}
    ${Checkin}=    SelectDate  2
    ${CheckinDate}=    Replace String    (//div[text()='DATE'])[1]    DATE    ${Checkin}
    Click Element   ${CheckinDate}
    Click Element      ${SearchBusButton}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Sleep   0.5
    Execute JavaScript    document.querySelector("${ScrollToOffers}").scrollIntoView(true);
    Wait Until Element Is Visible   ${Offers}
    Sleep   1
    Execute JavaScript    document.querySelector("${ScrollToTopBus}").scrollIntoView(true);
    Sleep   1
    Click Element   ${TopBusDestination}
    Wait Until Element Is Visible    ${ValidateTopBusesPage}
    Go Back
    Wait Until Element Is Visible   ${Logo}