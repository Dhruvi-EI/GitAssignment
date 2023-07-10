
from bs4 import BeautifulSoup
import requests
from robot.libraries.BuiltIn import BuiltIn


def holidaylist(msg):
    print(msg)
    url='https://intranet.einfochips.com/employee_intranet/portal/leave/holidaylist'
    selLib = BuiltIn().get_library_instance("SeleniumLibrary")
    # selLib.open_browser(url,'Chrome')
    r=requests.get(url)
    htmlContent=r.content
    soup=BeautifulSoup(htmlContent,'html.parser')
    holiday=[]
    holidaylist=soup.find_all('table td:nth-child(4)')
    for i in holidaylist:
        holiday.append(i.text)
    print(holiday)