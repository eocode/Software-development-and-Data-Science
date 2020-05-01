import datetime
my_time = datetime.datetime.now()
print(my_time)
my_day = datetime.date.today()
print(my_day)
my_birthday = datetime.date(1999,12,20)
print(my_birthday)

# Timestamp
# Tiempo transcurrido
# UNIX 1 enero de 1970, estándart de tiempo para las computadoras

my_timestamp = datetime.date.fromtimestamp(1588048333)
print(my_timestamp)

print(my_day.day)
print(my_day.month)
print(my_day.year)

f = datetime.datetime(
    year=2012,month=12,day=15
)
print(f)

# Operaciones con fechas
# Objetos de fechas
#datetime
#date
#time
#timedelta

# Datetime
m1 = datetime.datetime(year = 2020, month=4, day=30, hour=12,minute=34)
m2 = datetime.datetime(year = 1000, month=5, day=1, hour=3,minute=1)

dif = m1 - m2
print(dif)
print(type(dif))
print(dif.seconds)
print(dif.days)

# Date
m1 = datetime.date(year = 2020, month=4, day=30)
m2 = datetime.date(year = 1000, month=5, day=1)

dif = m1 - m2
print(dif)
print(type(dif))
print(dif.seconds)
print(dif.days)
# Formato de fechas

print(my_time)
print(my_time.strftime('%d/%m/%Y'))
print(my_time.strftime('%m/%d/%Y'))
print(my_time.strftime('Estamos en el año: %Y'))

# Investigar strptime

# Timezone
# Módulo pytz
