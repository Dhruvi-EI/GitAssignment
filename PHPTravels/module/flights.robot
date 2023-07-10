*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Verify Flight Tab
    Element Text Should Be      ${FlightTab}  ${FlightTabText}
    Click Element   ${FlightTab}
    Click Element   ${FlightType}
    Select From List by Value    ${FlightType}     first
    Click Element   ${FlightFrom}  
    Input Text    ${FlightFrom}    ${FirstCity}
    Wait Until Element Is Visible   ${FlightFirstCity}
    Click Element   ${FlightFirstCity}
    Click Element   ${FlightTo} 
    Input Text    ${FlightTo}    ${SecondCity}
    Wait Until Element Is Visible   ${FlightSecondCity}
    Click Element   ${FlightSecondCity}
    ${Checkout}=    Select Date From Today  3
    ${CheckOutDate}=    Replace String    (//td[text()='DATE'])[5]    DATE    ${Checkout}
    Click Element   ${DepartureDate}
    Execute JavaScript    document.querySelector("${ScrollForFlights}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${CheckOutDate}
    Click Element   ${DropDownForFlights}
    Wait Until Page Contains Element   ${FlightsDropDown}
    Click Element   ${UpdatePassengers}
    Click Element   ${SearchFlights}
    Wait Until Page Contains Element   ${ValidateFlightTabPage}
    Go Back
    Click Element   ${FlightTab}
    Click Element   ${RoundTrip}
    Click Element   ${FlightType}
    Select From List by Value    ${FlightType}     first
    Click Element   ${FlightFrom}  
    Input Text    ${FlightFrom}    ${FirstCity}
    Wait Until Element Is Visible   ${FlightFirstCity}
    Click Element   ${FlightFirstCity}
    Click Element   ${FlightTo} 
    Input Text    ${FlightTo}    ${SecondCity}
    Wait Until Element Is Visible   ${FlightSecondCity}
    Click Element   ${FlightSecondCity}
    execute javascript  window.scrollTo(0,200)
    Sleep   0.5
    Click Element   ${DepartureDate} 
    Click Element   ${CheckOutDate}
    Wait Until Element Is Visible   ${ReturnDate}
    ${Checkout}=    Select Date From Today  4
    ${CheckOutDate}=    Replace String    (//td[text()='DATE'])[6]    DATE    ${Checkout}
    Click Element   ${CheckOutDate}
    Click Element   ${DropDownForFlights}
    Wait Until Page Contains Element   ${FlightsDropDown}
    Click Element   ${UpdatePassengers}
    Click Element   ${SearchFlights}
    Wait Until Page Contains Element   ${ValidateFlightTabPage}
    Go Back
