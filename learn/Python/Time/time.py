import time

a = time.time()
print(a)

a = time.ctime()
print(a)

print("Sucede antes")
time.sleep(2)
print("Después de dos segundos")

a = time.localtime()
print(a)
print(a.tm_isdst)

a = time.gmtime()
print(a)

data = (2020,12,30,1,45,5,4,365,1)
a = time.mktime(data)
print("Construcción de fecha: ", a)

a = time.asctime(data)
print(a)

data = time.localtime()
formated = time.strftime("%d/%m/%Y - %H:%M:%S", data)
print(formated)

date = "December 20, 2020"
struct = time.strptime(date, "%B %d, %Y")
print(struct)