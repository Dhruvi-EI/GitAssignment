*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Trains Tab
    Click Element   ${TrainsTab}
    Element Text Should Be      ${TrainsTab}      ${TrainsTabText}
    Wait Until Element Is Visible   ${TrainsFrom}
    Click Element   ${TrainsFrom}
    Wait Until Element Is Visible   ${TrainsFromInput}
    Click Element   ${TrainsFromInput}  
    Click Element   ${SelectFirstStation} 
    Click Element    ${TrainsTo}
    Wait Until Element Is Visible   ${SelectSecondStation}
    Click Element   ${SelectSecondStation}
    Click Element   ${TrainTravelDate}
    ${Checkout}=    SelectDate  3
    ${CheckOutDate}=    Replace String    (//div[text()='DATE'])[1]    DATE    ${Checkout}
    Click Element   ${CheckOutDate} 
    Click Element   ${TrainClass}
    Wait Until Element Is Visible   ${SelectClass}
    Click Element   ${SelectClass}
    Click Element   ${SearchTrainsButton}
    Wait Until Element Is Visible   ${SearchedTrainsValidation}
    Go To   ${TrainsHome} 
    Wait Until Element Is Visible   ${Logo}
    Click Element   ${PNRStatus}
    Click Element  ${ValidatePNRStatus}  
    Input Text  ${ValidatePNRStatus}    ${PNRNumber}
    Click Element   ${CheckStatus}
    Go To   ${TrainsHome}
    Wait Until Element Is Visible  ${LiveStatus}
    Click Element  ${LiveStatus}
    Click Element    ${TrainNumber}
    Wait Until Element Is Visible   ${InputTrainNumber}
    Input Text   ${InputTrainNumber}     ${TrainName}
    Sleep   1
    Wait Until Element Is Visible   ${SelectTrain}
    Click Element   ${SelectTrain}
    Click Element   ${YourStop}
    Wait Until Element Is Visible   ${SelectStop}
    Click Element   ${SelectStop}
    Click Element   ${TrainStartDay}
    Wait Until Element Is Visible   ${SelStartDay}
    Click Element   ${SelStartDay}
    Click Element   ${CheckStatus}
    Go Back 
    Wait Until Element Is Visible   ${Logo}
