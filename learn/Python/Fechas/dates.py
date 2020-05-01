from datetime import date, timedelta

mydate = date(year=2015, month=12, day=23)
mydate2 = date.today()

days_5 = timedelta(days=5)
remove_days = date.today() + days_5
print(remove_days)