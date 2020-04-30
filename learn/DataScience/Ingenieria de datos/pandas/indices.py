import pandas as pd

file = pd.read_csv('learn/DataScience/Ingenieria de datos/pandas/eluniversal_2020_04_29_articles.csv', encoding='latin-1', sep=',')

print(file.head())

# Dictionary
print(file['title'])
print(file[['title','body']])

# Numpy
print(file.iloc[10:15])
print(file.iloc[15]['title'])

print(file.loc[:, 'body': 'title'])
