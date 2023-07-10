*** Settings ***   
Suite Setup     Open Browser and Login
Suite TearDown      Sign Out And Close Browser
Resource     ../common/resources.robot
#Author:Darshkumar.Chovatiya

*** Test Cases ***
Validate Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    #Click Element   ${LogoInFooter}
    #Go Back
    Click Element   ${ContactInFooter}
    Go Back
    Sleep   1   

Validate Company 
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${CompanyInFooter}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    #Sleep   0.5

Validate About Us In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${AboutUsInFooter}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    #Sleep   0.5

Validate Terms Of Use In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${TermsInFooter}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    #Sleep   0.5

Validate Cookies Policy In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${CookiesInFooter}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    #Sleep   1

Validate Privacy Policy In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${PrivacyPolicy}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    #Sleep   1

Validate Support In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${SupportInFooter}
    Go Back
    Wait Until Element Is Visible   ${Logo}
    #Sleep   0.5

Validate Become Supplier In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${BecomeSupplier}
    Go Back
    Sleep   0.5

Validate FAQ In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${FAQInFooter}  
    Go Back
    Sleep   1   

Validate Booking Tips In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${BookingTips}
    Go Back
    Sleep   1
    

Validate How To Book In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${HowToBook}
    Go Back   
    Sleep   1

Validate Services In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   0.5
    Click Element   ${ServicesInFooter}
    Go Back
    Sleep   0.5

Validate File A Claim In Footer
    Click Element   ${fileClaim}
    Go Back
    Sleep   0.5

Validate Offers In Footer
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${OffersInFooter}
    Go Back
    Sleep   1

Validate Services In Footer
    Click Element   ${SignUpSupplier} 
    Go Back
    Sleep   0.5
    Click Element   ${Career} 
    Go Back   
    Sleep   0.5

Validate Footer Facebook Icon
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${FacebookIcon} 
    Switch Window   NEW
    Wait Until Element Is Visible   ${FacebookPageAd}
    Click Element   ${CrossFacebookAd}
    Wait Until Element Is Visible   ${FacebookPageValidation}
    Close Window
    Sleep   0.5

Validate Footer Twitter Icon
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${TwitterIcon}
    Switch Window   NEW
    Wait Until Element Is Visible   ${TwitterPageValidation}    
    Close Window
    Sleep   0.5

Validate Footer Youtube Icon
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${YoutubeIcon}
    Switch Window   NEW
    Sleep   1
    Element Text Should Be    ${YoutubePage}    ${YoutubePageText} 
    Close Window
    Sleep   0.5


Validate Footer Whatsapp Icon
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${WhatsAppIcon}
    Switch Window   NEW
    Wait Until Element Is Visible    ${WhatsAppPage} 
    Close Window
    Sleep   0.5

Validate Footer Instagram Icon
    Switch Window   MAIN
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element   ${InstagramIcon}
    Switch Window   NEW
    Wait Until Element Is Visible   ${InstagramPageValidation} 
    Close Window
    Sleep   0.5

Validate PHPTRAVELS In Footer
    Switch Window   MAIN
    Click Button    ${ClickPHPTRAVELInFooter}
    Execute JavaScript    document.querySelector("${ScrollToFooter}").scrollIntoView(true)
    Sleep   1
    Click Element    ${ClickLinkInFooter}
    Switch Window   NEW
    Wait Until Element Is Visible   ${ValidateInNewTab} 
    Close Window
    Sleep   0.5

Validate Up Arrow
    Switch Window   MAIN
    Click Element    ${ValidateUpArrow} 
