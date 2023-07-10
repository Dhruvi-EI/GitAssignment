import datetime 
def SelectDate(addday):
    current_time = datetime.datetime.now()
    DATE=current_time.day+int(addday)
    DATE=str(DATE)
    return DATE

