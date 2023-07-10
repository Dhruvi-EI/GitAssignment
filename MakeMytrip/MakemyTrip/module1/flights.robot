*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Flights Tab
    #Click Element   ${ClosePopUp}
    Set Selenium timeout    10 seconds
    Element Text Should Be      ${FlightTab}    ${FlightTabText} 
    Wait Until Element Is Visible   ${ValidateFlightTab}     
    Click Element   ${FlightFromCity}
    Wait Until Element Is Visible   ${SelectFirstCity}
    Click Element   ${SelectFirstCity}
    Click Element    ${FlightTo}
    Wait Until Element Is Visible   ${SelSecondCity}
    Click Element   ${SelSecondCity}
    ${Checkin}=    SelectDate  02
    ${CheckinDate}=    Replace String    (//p[text()='DATE'])[1]    DATE    ${Checkin}  
    Wait Until Element Is Visible   ${CheckinDate}
    Click Element   ${CheckinDate}
    Click Element   ${TravellerClass}
    Click Element   ${UpdatePassengers} 
    Execute JavaScript    document.querySelector("${ScrollForFlight}").scrollIntoView(true);
    Sleep   1
    Click Element   ${UpdateClass}
    Click Button   ${ApplyClass}
    Mouse Over  ${StudentRadio}
    Click Element   ${StudentRadio}
    Click Element   ${SearchFlights}
    Wait Until Element Is Visible    ${ValidateOneWayFlight}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Click Element   ${RoundTrip} 
    Click Element   ${FlightFrom}
    Input Text    ${InputFromCity}    ${FirstCity}
    Sleep   1
    Click Element   ${SelectFirstCity}
    Click Element   ${FlightTo}
    Input Text     ${InputToCity}     ${SecondCity}   
    Sleep   1
    Click Element   ${SelSecondCity}
    Click Element   ${FlightDepartureDate}
    Click Element   ${CheckinDate}
    Click Element   ${FlightReturnDate}
    ${Checkout}=    SelectDate  3
    ${CheckOutDate}=    Replace String    (//p[text()='DATE'])[1]    DATE    ${Checkout}
    Click Element   ${CheckOutDate}
    Click Element   ${FlightUpdate}
    Click Element   ${UpdatePassengers}
    Click Element   ${UpdateClass}
    Click Element   ${ApplyButton}
    Sleep   1
    Mouse Over  ${FareType}
    Click Element   ${FareType}
    Click Element   ${SearchFlights}
    #Sleep   1
    Wait Until Element Is Visible   ${SearchedFlightPageValidation}
    Go Back
    Sleep   1
    Wait Until Element Is Visible   ${MultiCity}
    Click Element   ${MultiCity}
    Click Element   ${multiFirstCity}
    Wait Until Element Is Visible   ${SelFirstMultiCity} 
    Click Element   ${SelFirstMultiCity} 
    Wait Until Element Is Visible   ${SelSecondMultiCity}
    Click Element   ${SelSecondMultiCity}
    Click Element   ${CheckinDate}
    Wait Until Element Is Visible    ${TravellClass}
    Click Element   ${TravellClass}
    Click Element   ${UpdatePassengers}
    Execute JavaScript    document.querySelector("${ScrollForMultiCity}").scrollIntoView(true);
    Sleep   1
    Click Element   ${UpdateClass}
    Click Button   ${ApplyClass}
    Click Element   ${ThirdMultiCity}
    Click Element   ${SelThirdCity}
    Wait Until Element Is Visible   ${SelFourthCity}
    Click Element   ${SelFourthCity}
    Click Element   ${CheckOutDate}
    #Mouse Over  ${StudentRadio}
    #Click Element   ${StudentRadio}
    Click Element   ${SearchFlights}
    Wait Until Element Is Visible    ${ValidateMultiFlightPage}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Execute JavaScript    document.querySelector("${ScrollToOffers}").scrollIntoView(true);
    Element Text Should Be      ${Offers}     ${OffersText}
    Execute JavaScript    document.querySelector("${ScrollToDownload}").scrollIntoView(true);
    Wait Until Element Is Visible   ${Download}
    Element Text Should Be      ${Download}     ${DownloadText}
    #Execute JavaScript    document.querySelector("${ScrollToCollection}").scrollIntoView(true);
    #Element Text Should Be    ${Collection}     ${CollectionText} 
    #Execute JavaScript    document.querySelector("${ScrollToWonders}").scrollIntoView(true);
    #Element Text Should Be     ${WondersIndia}   ${WondersIndiaText}
