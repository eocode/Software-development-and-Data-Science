
import matplotlib.colors as colors
import matplotlib.pyplot as plt
import pandas as pd

def histograma_config(ax_plot, x, title='', x_label='', y_label=''):
    frec, x_bins, patches = ax_plot.hist(x, edgecolor='k', linewidth=1)
    ax_plot.set_xlabel(x_label)
    ax_plot.set_ylabel(y_label)
    ax_plot.set_title(title)

    color_fracs = frec / frec.max()

    color_norm = colors.Normalize(color_fracs.min(), color_fracs.max())
    color_norm

    for frac, patch in zip(color_fracs, patches):
        color = plt.cm.Blues(color_norm(frac))
        patch.set_facecolor(color)
fig, (pib_plot, aporte_plot, internet_plot)= plt.subplots(nrows = 1, ncols = 3, figsize = (15,3), sharey = True)

orangeec = pd.read_csv('./data.csv')
orangeec.info()

histograma_config(ax_plot = pib_plot, 
                  x = orangeec['GDP PC'], 
                  title='PIB per Capita en paises latam', 
                  x_label='PIB per Capita', 
                  y_label='Cantidad de Paises')

histograma_config(aporte_plot, orangeec['Creat Ind % GDP'], 
                  'Contribucion Economia naranja al pib en paises latam', 
                  'Aporte a la Economia Naranja (%)')

histograma_config(internet_plot, orangeec['Internet penetration % population'], 
                  'Penetracion internet en paises latam', 
                  'Penetracion de internet (%)')

fig.savefig('orangeec_hist.png')