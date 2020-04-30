import pandas as pd

universal = pd.read_csv('learn/DataScience/Ingenieria de datos/pandas/eluniversal_2020_04_29_articles.csv', encoding='latin-1', sep=',')

universal['newspaper_uid'] = 'eluniversal'

print(universal)