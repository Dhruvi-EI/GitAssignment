*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Verify Hotel Tab
    Set Selenium Timeout    10s 
    Element Text Should Be      ${HotelTab}     ${HotelTabText}
    Element Text Should Be      ${ValidateCityInput}    ${CityLabel}
    Click Element   ${ValidateCityInput}  
    Input Text   ${InputTextFieldCity}    ${FirstCity}
    Wait Until Element Is Visible   ${FirstCitySearched}
    Click Element   ${FirstCitySearched}
    execute javascript  window.scrollTo(0,200)
    Sleep   0.5
    Click Element   ${CheckinDateForHotel} 
    ${Checkin}=    Select Date From Today  4
    ${CheckInDate}=    Replace String    (//td[text()='DATE'])[1]    DATE    ${Checkin}
    Click Element   ${CheckInDate}
    ${Checkout}=    Select Date From Today  5
    ${CheckOutDate}=    Replace String    (//td[text()='DATE'])[2]    DATE    ${Checkout}
    Click Element   ${CheckOutDate}
    Click Element   ${DropdownForHotels}
    Click Element   ${UpdateRooms}
    Click Element   ${SubmitForHotels}
    Wait Until Element Is Visible   ${ValidateHotelTabPage}
    Go Back