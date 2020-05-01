from datetime import datetime
import pytz

utc_time = datetime.now()
print(f'UTC time: ', utc_time.strftime('%m/%d/%Y, %H:%M:%S'))

my_city_timezone = pytz.timezone('America/Bogota')
my_city_time = datetime.now(my_city_timezone)
print('Bogota: ',my_city_time.strftime('%m/%d/%Y, %H:%M:%S'))

my_city_timezone = pytz.timezone('America/Mexico_City')
my_city_time = datetime.now(my_city_timezone)
print('Ciudad de México: ',my_city_time.strftime('%m/%d/%Y, %H:%M:%S'))

my_city_timezone = pytz.timezone('America/Caracas')
my_city_time = datetime.now(my_city_timezone)
print('Caracas: ',my_city_time.strftime('%m/%d/%Y, %H:%M:%S'))

my_str = '2020-04,12'
my = datetime.strptime(my_str, '%Y-%m,%d')
print(my)