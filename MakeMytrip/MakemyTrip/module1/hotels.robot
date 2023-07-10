*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Hotels Tab
    Element Text Should Be      ${HotelsTab}    ${HotelsTabText} 
    Click Element   ${HotelsTab} 
    Wait Until Element Is Visible   ${ValidateHotelsTab}     
    Click Element   ${CityHotels}
    Sleep   1
    Input Text      ${InputCityHotels}      ${SecondCity}
    Click Element   ${SelectCity}
    ${Checkin}=    SelectDate  2
    ${CheckinDate}=    Replace String    (//div[text()='DATE'])[1]    DATE    ${Checkin}
    ${Checkout}=    SelectDate  3
    ${CheckOutDate}=    Replace String    (//div[text()='DATE'])[1]    DATE    ${Checkout}
    Click Element   ${CheckinHotels}
    Click Element   ${CheckinDate}
    Click Element   ${CheckOutDate}
    Click Element   ${ApplyUpdateDetails}
    Click Element   ${PricePerNight}
    Wait Until Element Is Visible   ${SelectPrice} 
    Click Element   ${SelectPrice}
    Click Element   ${Search}
    Wait Until Element Is Visible    ${ValidateHotelPage} 
    Go Back
    Sleep   3
    Wait Until Element Is Visible   ${Logo}
    Click Element   ${HotelsClickGroupDeals}
    Click Element   ${CityInput}
    Wait Until Element Is Visible   ${SelectCityForHotels}
    Click Element   ${SelectCityForHotels}
    Click Element   ${CheckinDate} 
    Click Element   ${CheckOutDate}
    Click Element   ${RoomsDropDown}
    Click Element   ${SelectRooms}
    Click Element   ${ApllyForRooms} 
    Execute JavaScript    document.querySelector("${ScrollToOffers}").scrollIntoView(true);
    Wait Until Element Is Visible   ${Offers}
    Execute JavaScript    document.querySelector("${ScrollToDownload}").scrollIntoView(true);
    Wait Until Element Is Visible   ${Download}
    Element Text Should Be      ${Download}     ${DownloadText}  
    Execute JavaScript    document.querySelector("${ScrollForCityHotels}").scrollIntoView(true);
    Sleep   0.5
    Click Link   ${HotelsCities}
    