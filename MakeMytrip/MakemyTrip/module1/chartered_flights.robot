*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Charter Flights Tab
    Click Element   ${CharterFlightsTab}
    Element Text Should Be      ${CharterFlightsTab}     ${CharteredFlightTabText} 
    Sleep   1
    Click Element   ${FlightFrom}
    Wait Until Element Is Visible   ${BusFromCity}
    Click Element   ${BusFromCity}
    Wait Until Element Is Visible   ${ToCityChartered}  
    Click Element   ${ToCityChartered}  
    ${Checkin}=    SelectDate  2
    ${CheckinDate}=    Replace String    (//p[text()='DATE'])[1]    DATE    ${Checkin}
    Wait Until Element Is Visible   ${CheckinDate}
    Click Element   ${CheckinDate}
    Sleep   1
    Click Element   ${SelectDepartureTime} 
    Click Element   ${SelectPassenger}
    Click Element   ${SearchButton}
    Wait Until Element Is Visible    ${ValidateCharteredFlightPage}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Wait Until Element Is Visible   ${RoundTripChartered}
    Click Element   ${RoundTripChartered}
    Click Element   ${FlightFrom}
    Wait Until Element Is Visible   ${SelectFirstCity} 
    Click Element   ${SelectFirstCity} 
    Wait Until Element Is Visible   ${SelSecondCity}  
    Click Element   ${SelSecondCity} 
    Wait Until Element Is Visible   ${CheckinDate}
    Click Element   ${CheckinDate}
    Sleep   1
    Click Element   ${SelectDepartureTime}
    ${Checkout}=    SelectDate  3
    ${CheckOutDate}=    Replace String    (//p[text()='DATE'])[1]    DATE    ${Checkout}
    Wait Until Element Is Visible   ${CheckOutDate}
    Click Element   ${CheckOutDate}
    Wait Until Element Is Visible   ${SelectDepartureTime}
    Click Element   ${SelectDepartureTime} 
    Click Element   ${SelectPassenger}
    Click Element   ${SearchButton}
    Wait Until Element Is Visible    ${ValidateCharteredFlightPage}
    Go Back
    Wait Until Element Is Visible   ${Logo}

