*** Variables ***
${URL}      https://intranet.einfochips.com/
${SearchName}   xpath=//input[@placeholder='Search Employee']
${GetNames}    css=table[class*='table'] td:nth-child(2)
${Home}     xpath=//a[text()='Home ']
${Birthday}  xpath=//a[text()='Birthday']
${BirthdayTextpath}  xpath=//h4
${ConfirmEmpPage}  xpath=//h4[text()='Phone Book']
${Logo}     css=img[alt='Intranet']
${DateDropdown}     css=select[name='sbday']
${SelectTodayDate}    css=option[value='19']
${BackToHomePage}   https://intranet.einfochips.com/employee_intranet/portal/
${BdayNames}       css=table[class*='table'] td:nth-child(1)
${ScrollPath}   css=div[class='row emp_profile']
${BirthdayUsername}     xpath=//div[@class='usr-name']/a[@title='click to view profile']
${HoverOverHome}    xpath=//a[text()='Home ']
${ClickOnHoidayList}    xpath=//a[text()='Holiday List']
${VerifyHolidayPage}    css=h4[class='top_heading_text']
${SelectYear}   css=select[id='holiday_year']
${SelectBranchName}  css=select[id='branch_id']
${SubmitButton}     css=button[name='btn_submit_holiday']
${HolidayDescription}   css=table[class*='table'] td:nth-child(4)
${Pagination}      css=ul[class='pagination pagination-lg'] li
${ChangePage}    //a[@class='green normal']
${Signout}     xpath=//a[text()='Logout']