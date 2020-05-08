import pandas as pd

mtcars = pd.read_csv('./mtcars.csv')
mtcars.info()

import matplotlib.pyplot as plt


plt.style.use('seaborn-whitegrid')
plt.figure(clear=True, figsize=(20, 10))
transparencia = 0.3

x_4_cyl = mtcars[mtcars['cyl'] == 4]['hp']
y_4_cyl = mtcars[mtcars['cyl'] == 4]['mpg']
color_4_cyl = mtcars[mtcars['cyl'] == 4]['qsec']
size_4_cyl = mtcars[mtcars['cyl'] == 4]['wt']

x_6_cyl = mtcars[mtcars['cyl'] == 6]['hp']
y_6_cyl = mtcars[mtcars['cyl'] == 6]['mpg']
color_6_cyl = mtcars[mtcars['cyl'] == 6]['qsec']
size_6_cyl = mtcars[mtcars['cyl'] == 6]['wt']

x_8_cyl = mtcars[mtcars['cyl'] == 8]['hp']
y_8_cyl = mtcars[mtcars['cyl'] == 8]['mpg']
color_8_cyl = mtcars[mtcars['cyl'] == 8]['qsec']
size_8_cyl = mtcars[mtcars['cyl'] == 8]['wt']

plt.scatter(x = x_4_cyl, y = y_4_cyl, c = color_4_cyl, s = size_4_cyl*300,
            edgecolor = 'black', linewidth = 1, alpha = transparencia,
            cmap = 'Blues', marker = 'o', label='4 cilindros')
plt.colorbar().set_label('¼ Milla por seg.')
plt.legend()


plt.scatter(x = x_6_cyl, y = y_6_cyl, c = color_6_cyl, s = size_6_cyl*300,
            edgecolor = 'black', linewidth = 1, alpha = transparencia,
            cmap = 'Greens', marker = 'v', label='6 cilindros')
plt.colorbar()
plt.legend()

plt.scatter(x = x_8_cyl, y = y_8_cyl, c = color_8_cyl, s = size_8_cyl*300,
            edgecolor = 'black', linewidth = 1, alpha = transparencia,
            cmap = 'Oranges', marker = 's', label='8 cilindros')

plt.legend(labelspacing=1, markerscale=0.3, title='SIMBOLOGIA', 
           frameon=True, framealpha=0.5, facecolor='#CCCCCC', edgecolor='k')
plt.colorbar()

plt.title('Eficacia de Vehiculos')
plt.xlabel('Caballos de fuerza')
plt.ylabel('Millas por galon')
plt.savefig('mtcars.png')
plt.show()