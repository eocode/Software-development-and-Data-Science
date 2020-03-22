from bokeh.plotting import figure, output_file, show
import numpy as np

if __name__ == "__main__":
    output_file('graficado_simple.html')
    fig = figure(
        title="Tester", 
        plot_width=600, 
        plot_height=300, 
        x_axis_label='X axis', 
        y_axis_label='Y axis')
    # type(fig)
    # help(fig)
    # fig.line(x=[1, 2, 3, 4, 5], y=[6, 7, 2, 4, 5])

    fig.multi_line(
        xs=[np.random.rand(5), np.random.rand(5)], 
        ys=[np.random.rand(5), np.random.rand(5)], 
        color=['red','green'])
    show(fig)