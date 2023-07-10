*** Keywords ***   
Open Browser and Login
    Open Browser    ${URL}    Chrome 
    Maximize Browser Window

Select Date From Today
    [Arguments]     ${AddDay}
    ${day}=      Get Time    day
    ${d}=    Evaluate   ${day}+${AddDay}
    ${d}=    Convert To String   ${d}
    [return]    ${d}
    
Sign Out And Close Browser
    Close Browser

