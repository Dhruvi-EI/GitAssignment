*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Cabs Tab
    Set Selenium Timeout    10
    Click Element   ${CabsTab}
    Element Text Should Be      ${CabsTab}  ${CabsTabText} 
    Wait Until Element Is Visible  ${CabsFrom} 
    Click Element   ${CabsFrom}
    Wait Until Element Is Visible   ${SelCabFrom}
    Click Element   ${SelCabFrom}
    Click Element   ${CabsTo}
    Wait Until Element Is Visible      ${SelCabsTo} 
    Click Element   ${SelCabsTo} 
    Click Element   ${DepartureDateCabs}
    ${Checkin}=    SelectDate  2
    log to console      ${Checkin}
    ${CheckinDate}=    Replace String    (//div[text()='DATE'])[1]    DATE    ${Checkin}
    ${Checkout}=    SelectDate   3
    ${CheckOutDate}=    Replace String    (//div[text()='DATE'])[1]    DATE    ${Checkout}
    Wait Until Element Is Visible      ${CheckinDate}
    Click Element   ${CheckinDate}
    Sleep   1
    Click Element   ${CabsPickUp} 
    Sleep   1
    Click Element   ${SelectPickupTimeForCab}
    Click Element   ${DropTimeApply}
    Click Element   ${SearchButton}
    Wait Until Element Is Visible   ${ClickSearch}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Sleep   1
    Wait Until Element Is Visible   ${RoundTripRadio}
    Click Element   ${RoundTripRadio}
    Click Element   ${FlightFrom}
    Wait Until Element Is Visible   ${BusFromCity}
    Click Element   ${BusFromCity}
    Wait Until Element Is Visible   ${CabsToCity}
    Click Element   ${CabsToCity}
    Click Element   ${CheckinDate}
    Click Element   ${CheckOutDate}
    Wait Until Element Is Visible   ${PickUpTime}
    Click Element   ${PickUpTime}
    Click Element   ${PickUpTimeApply}
    Sleep   1
    Click Element    ${DropTime}
    Wait Until Element Is Visible   ${DropTimeApply}
    Click Element   ${DropTimeApply}
    Sleep   1
    Wait Until Element Is Visible   ${SearchButton}
    Click Element   ${SearchButton}
    Wait Until Element Is Visible   ${SearchedCabsValidate}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Click Element   ${AirportTransferTab}
    Wait Until Element Is Visible   ${ToAirport}
    Click Element   ${ToAirport}
    Click Element   ${SelectToAirport}
    Sleep   1
    Input Text  ${InputCabsFrom}     ${CabsCity}
    Wait Until Element Is Visible   ${SelectInputCabsFrom}
    Click Element   ${SelectInputCabsFrom}
    Sleep   1
    Input text  ${EnterAirport}  ${CabsCity}
    Sleep   1
    Wait Until Element Is Visible    ${SelectAirport}
    Click Element    ${SelectAirport}
    Click Element   ${CheckinDate}
    Wait Until Element Is Visible   ${SelectTime}
    Click Element   ${SelectTime}
    Click Element   ${DropTimeApply}
    Click Element   ${SearchButton}
    Wait Until Element Is Visible   ${ValidateSeachedAirportPage}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Click Element   ${HourlyRentalTab}
    Click Element   ${FlightFrom}
    Wait Until Element Is Visible  ${SelectInputCabsFrom} 
    Click Element   ${SelectInputCabsFrom}
    Click Element   ${PickUpHourlyRental} 
    Sleep   1
    Click Element   ${CheckinDate}
    Sleep   1
    Click Element   ${PickUpTimeTab}
    Wait Until Element Is Visible   ${PickUpTime}
    Click Element   ${PickUpTime}
    Wait Until Element Is Visible   ${SelectTime}
    Click Element   ${SelectTime}
    Click Element   ${DropTimeApply}
    Click Element   ${SelectPackage}
    Click Element   ${Packages}
    Click Element   ${SearchButton}
    Wait Until Element Is Visible    ${SelectCabsType}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Wait Until Element Is Visible   ${Offers}
    Execute JavaScript    document.querySelector("${ScrollToTopDestination}").scrollIntoView(true);
    Sleep   1
    Click Element   ${TopBusDestination}
    Go Back
    