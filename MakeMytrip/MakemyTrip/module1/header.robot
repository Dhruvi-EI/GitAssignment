*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Header Bar
    Sleep   2
    Click Element   ${SuperOffers}
    Switch Window   NEW
    Wait Until Element Is Visible   ${SuperOfferValidation}
    Close Window
    Switch Window   MAIN
    Wait Until Element Is Visible   ${Logo}
    Mouse Over     ${myBiz}
    Wait Until Element Is Visible   ${myBizPopup}
    Element Text Should Be      ${myBizPopup}   ${myBizPopupText}
    Click Element   ${myBiz}
    Wait Until Element Is Visible   ${myBizPopupClose}
    Click Element     ${myBizPopupClose}
    Wait Until Element Is Visible      ${mybizLoginClose}
    Click Element   ${mybizLoginClose}
    Wait Until Element Is Visible   ${myTrips}
    Click Element    ${myTrips}
    Wait Until Element Is Visible   ${myBizzAccount}
    Click Element      ${myBizzAccount}
    Go To   ${URL}
    Wait Until Element Is Visible   ${myTrips}
    Click Element   ${Login}
    Go To   ${URL}
    Click Element   ${Language}
