import requests

response = requests.get('https://www.lacomer.com.mx/lacomer')

print(response)
print(dir(response))
print(response.status_code)
print(response.headers)
print(response.text)