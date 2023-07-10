*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Homestay Tab
    Element Text Should Be      ${Homestaystab}    ${HomestaysText} 
    Click Element   ${HomestaysTab} 
    Wait Until Element Is Visible   ${ValidateHomestay}     
    Click Element   ${HomestayCity}
    Sleep   1
    Click Element   ${SelectHomestayCity}
    Click Element   ${AddCheckin}
    ${Checkin}=    SelectDate  2
    ${CheckinDate}=    Replace String    (//div[text()='DATE'])[1]    DATE    ${Checkin}  
    ${Checkout}=    SelectDate  3
    ${CheckOutDate}=    Replace String    (//div[text()='DATE'])[1]    DATE    ${Checkout}
    Click Element   ${CheckinDate}
    Click Element   ${CheckOutDate}
    Click Element   ${ApplyGuest}
    Click Element   ${TravellingFor}
    Click Element   ${SelectTravelling}
    Click Element   ${Search}
    Wait Until Element Is Visible    ${ValidateSearchedHomestay} 
    Go Back  
    Execute JavaScript    document.querySelector("${ScrollForWonderland}").scrollIntoView(true);
    Wait Until Element Is Visible   ${Wonderland}
    Element Text Should Be  ${Wonderland}   ${WonderlandText}
    Execute JavaScript    document.querySelector("${ScrollToHomeStayCity}").scrollIntoView(true);
    Sleep   1
    Click Element   ${HomeCity}
    Go Back