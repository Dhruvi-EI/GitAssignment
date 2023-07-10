*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Holiday Packages Tab
    Sleep   2
    Click Element   ${HolidayTab} 
    Element Text Should Be      ${HolidayTab}    ${HolidayTabText} 
    Wait Until Element Is Visible  ${FromCityHoliday}
    Click Element   ${FromCityHoliday}
    Click Element   ${FirstCitySelect}
    Sleep   1
    Click Element   ${ToHolidayCity}
    Wait Until Element Is Visible   ${SelectSecondCity}
    Click Element   ${SelectSecondCity}
    ${Checkin}=    SelectDate  2
    ${CheckinDate}=    Replace String    (//p[text()='DATE'])[1]    DATE    ${Checkin}
    ${Checkout}=    SelectDate  3
    ${CheckOutDate}=    Replace String    (//p[text()='DATE'])[1]    DATE    ${Checkout}
    Wait Until Element Is Visible   ${CheckinDate}
    Click Element   ${CheckinDate} 
    Execute JavaScript    document.querySelector("${ScrollToApply}").scrollIntoView(true)
    Sleep   0.5
    Click Button   ${ApplyRooms}
    Execute JavaScript    document.querySelector("${ScrollToFilters}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${Rating}
    Click Button   ${Filterapply}
    Click Element   ${ClickSearch}  
    Sleep   1
    Wait Until Element Is Visible   ${SearchedHolidayValidation}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    Click Element   ${DestinationTab} 
    Wait Until Element Is Visible   ${DestinationCity}
    Click Element   ${DestinationCity}
    Switch Window   NEW
    Wait Until Element Is Visible   ${CityPageValidation}
    Close Window
    Switch Window   MAIN
    Wait Until Element Is Visible    ${HoneymoonTab}
    Click Element   ${HoneymoonTab}
    Click Element   ${DestinationCity}  
    Sleep   1
    Switch Window   NEW
    Wait Until Element Is Visible   ${CityPageValidation}
    Close Window
    Switch Window   MAIN
    Wait Until Element Is Visible    ${FeaturedTab} 
    Click Element   ${FeaturedTab} 
    Click Element   ${DestinationCity}
    Switch Window   NEW
    Wait Until Element Is Visible    ${CityPageValidation}
    Close Window
    Switch Window   MAIN
    #Wait Until Element Is Visible   ${TravelGuidelineTab}
    #Click Element   ${TravelGuidelineTab}
    #Switch Window   New
    #Sleep   1
    #Switch Window   MAIN
    #Click Element   ${DestinationCity}
    #Switch Window   NEW
    #Wait Until Element Is Visible   ${GuidelinesValidation} 
    #Switch Window   MAIN
    Wait Until Element Is Visible   ${Heading1}
    execute javascript  window.scrollTo(0,2500)
    Wait Until Element Is Visible   ${Heading2}
    execute javascript  window.scrollTo(0,2850)
    Wait Until Element Is Visible   ${Heading3}
    execute javascript  window.scrollTo(0,3100)
    Wait Until Element Is Visible   ${Heading4}
