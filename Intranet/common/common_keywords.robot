*** Keywords ***   
Open Browser and Login
    Open Browser    ${URL}    Chrome 
    Maximize Browser Window

Sign Out And Close Browser
    Mouse Down   ${Signout}
    Mouse Up   ${Signout}
    Close Browser

Get Holiday List
    [Arguments]     ${Year}   ${BranchName}
    Click Element   ${SelectYear}
    Select From List By Label   ${SelectYear}   ${Year}
    Click Element   ${SelectBranchName}
    Select From List By Label   ${SelectBranchName}   ${BranchName}
    Click Button   ${SubmitButton}
    
    ${Holiday}=  Get WebElements     ${HolidayDescription}
    @{HolidayList}=     Create List
    ${AllPages}=  Get WebElements    ${Pagination}
    ${LengthAllPages}=  Get Length  ${AllPages}

    FOR  ${i}  IN RANGE   1     ${LengthAllPages+1}
        Click Element   (${ChangePage})[${i}]
            FOR  ${Element}  IN      @{Holiday}
                Log    ${Element.text}
                Append To List      ${HolidayList}   ${Element.text}
            END    
    END
    [return]    ${HolidayList}

List Difference
    [Arguments]    ${arg1}    ${arg2}
    @{New_list}=    Create List    @{arg1}    @{arg2}
    FOR    ${item}    IN    @{arg1}
        Remove Values From List    ${New_list}    ${item}
    END
    [return]    ${New_list}

Holiday
    holidaylist 