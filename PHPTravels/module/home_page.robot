*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Logo
    Wait Until Page Contains Element    ${logo}
    Click Element   ${logo}

Verify Page Text
    Element Text Should Be      ${HomePageTextValidation}   ${HomepageText}  

Validate Top Flight Destination
    Element Text Should Be      ${ValidateTopFlights}   ${TopFlightsText}

Validate Featured Hotels
    Element Text Should Be      ${FeaturedHotels}   ${FeaturedHotelsText}

Validate Featured Tours
    Element Text Should Be      ${FeaturedTours}   ${FeaturedToursText}

Validate Book Your Transfer Today
    Element Text Should Be      ${BookTransfer}   ${BookTransferText}


Validate New Offers
    Element Text Should Be   ${ValidateNewOffer}   ${NewOfferText}
    Execute JavaScript    document.querySelector("${ScrollToNewOffers}").scrollIntoView(true)
    Sleep   1
    Click Element   ${NewOfferPage}
    Wait Until Element Is Visible   ${ValidateNewOfferPage}
    Go Back
    Wait Until Element Is Visible   ${NewOfferPage}

Validate Latest on blogs
    Execute JavaScript    document.querySelector("${ScrollToLatestBlog}").scrollIntoView(true)
    Sleep   1
    Element Text Should Be      ${LatestOnBlog}   ${LatestOnBlogText}
    Click Element   ${LatestOnBlogpage}
    Go Back

Validate Need Help Us
    Execute JavaScript    document.querySelector("${ScrollToNeedHelp}").scrollIntoView(true)
    Sleep   1
    Click Element   ${HelpUsIcon}
    Wait Until Element Is Visible   ${HelpUsPage}
    Go Back
    Wait Until Element Is Visible   ${HomePageValidation}

Validate Secure Payments
    Element Text Should Be   ${SecurePayments}    ${SecurePaymentsText}

Validate Cancel Policy
    Element Text Should Be   ${CancelPolicy}    ${CancelPolicyText} 

Validate Subscribe Box
    Execute JavaScript    document.querySelector("${ScrollToSubscribeBox}").scrollIntoView(true)
    Sleep   1
    Element Text Should Be   ${ValidateSubscribeBox}      ${SubscribeBoxText}
    Input Text   ${EmailAddressBox}  ${EmailAddress}
    Click Button    ${SubscribeButton} 

