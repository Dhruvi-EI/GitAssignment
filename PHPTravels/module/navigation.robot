*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../common/resources.robot
#Author:Darshkumar.Chovatiya


*** Test Cases ***
Validate Navigation Bar
    Wait Until Page Contains Element    ${HotelInNavigation}
    Click Element   ${HotelInNavigation}
    Wait Until Page Contains Element    ${HeaderHotelPage}
    Element Text Should Be   ${HotelHeaderTextLocation}   ${HotelHeaderText}
    Go Back

    Wait Until Page Contains Element    ${FlightsInNavigation}
    Click Element   ${FlightsInNavigation}
    Wait Until Page Contains Element    ${FlightHeaderText}
    Go Back

    Wait Until Page Contains Element    ${ToursInNavigation}
    Click Element   ${ToursInNavigation}
    Wait Until Page Contains Element    ${ToursHeaderText}
    Go Back

    Wait Until Page Contains Element    ${TransfersInNavigation} 
    Click Element   ${TransfersInNavigation} 
    Wait Until Page Contains Element    ${TransferHeaderText}
    Go Back

    Wait Until Page Contains Element    ${VisaInNavigation}
    Click Element   ${VisaInNavigation}
    Wait Until Page Contains Element    ${VisaHeaderText}
    Go Back

    Wait Until Page Contains Element    ${BlogInHeader}
    Click Element   ${BlogInHeader}
    Wait Until Page Contains Element    ${BlogHeaderText}
    Go Back

    Wait Until Page Contains Element    ${OffersInNavigation}
    Click Element   ${OffersInNavigation}
    Wait Until Page Contains Element    ${OffersHeaderText}
    Go Back

    Wait Until Page Contains Element    ${DropDownInNavigation}
    Click Element   ${DropDownInNavigation}
    Wait Until Element Is Visible   ${DropDownText}
    Go Back
    Wait Until Page Contains Element    ${HomePageValidation}

    Mouse Over  ${DropDown}
    Wait Until Page Contains Element   ${FAQInDropdown} 
    Click Element    ${FAQInDropdown}
    Wait Until Page Contains Element    ${FAQPageValidation}
    Go Back
    Wait Until Page Contains Element    ${HomePageValidation}

    Mouse Over  ${DropDown}
    Wait Until Page Contains Element    ${TermsInDropdown}
    Click Element   ${TermsInDropdown}
    Wait Until Page Contains Element    ${TermsPageValidation}
    Go Back
    Wait Until Page Contains Element    ${HomePageValidation}

    Mouse Over  ${DropDown}
    Wait Until Page Contains Element    ${BookingInDropdown}
    Click Element   ${BookingInDropdown}
    Wait Until Page Contains Element    ${BookingPageValidation}
    Go Back
    Wait Until Page Contains Element    ${HomePageValidation}

    Mouse Over  ${DropDown}
    Wait Until Page Contains Element    ${AboutUsInDropdown}
    Click Element   ${AboutUsInDropdown}
    Wait Until Page Contains Element    ${AboutUsPageValidation}
    Go Back
    Wait Until Page Contains Element    ${HomePageValidation}

    Click Element   (//a[@href='https://phptravels.net/offers'])[1]
    Wait Until Page Contains Element    ${OffersHeaderText}
    Go Back

    Click Button    ${Languages}
    Click Button    ${Currency}
    Click Button    ${Account}
    Wait Until Page Contains Element    ${CustomerLogin}
    Click Element   ${CustomerLogin}
    Switch Window   New
    Wait Until Page Contains Element    ${ValidateLoginPage}
    Close Window
    Switch Window   Main
    Go To   ${URL} 
    Wait Until Page Contains Element    ${Account}
    Click Button    ${Account}
    Wait Until Page Contains Element    ${CustomerSignUp}
    Click Element   ${CustomerSignUp}
    Wait Until Element Is Visible    ${ValidateSignUpPage}
    Go Back
    Wait Until Page Contains Element    ${Account}
    Click Button    ${Account}
    Wait Until Page Contains Element    ${SuppliersLogin}
    Click Element   ${SuppliersLogin}
    Switch Window    NEW
    Wait Until Element Is Visible    ${ValidateSuppliersLoginPage}
    Close Window
    Switch Window    MAIN