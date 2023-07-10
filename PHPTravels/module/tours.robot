*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Verify Tours Tab 
    Element Text Should Be      ${ToursTab}  ${ToursTabText}  
    Click Element   ${ToursTab}
    Wait Until Element Is Visible   ${CityForTours} 
    Click Element   ${CityForTours} 
    Input Text    ${InputCity}     ${FirstCity}
    Wait Until Element Is Visible   ${FirstCitySearched}
    Click Element   ${FirstCitySearched}
    Click Element   ${DateForTours}
    Execute JavaScript    document.querySelector("${ScrollForTours}").scrollIntoView(true)
    Sleep   1
    ${Checkin}=    Select Date From Today  4
    ${CheckInDate}=    Replace String    (//td[text()='DATE'])[8]    DATE    ${Checkin}
    Click Element   ${CheckInDate}
    Click Element   ${DropDownForTours}
    Click Element   ${SearchForTours}
    Wait Until Page Contains Element   ${ValidateToursPage}
    Go Back