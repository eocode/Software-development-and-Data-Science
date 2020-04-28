#x,y path for drunk walking
path_x = [0]
path_y = [0]

#drunk.py
##################################

class Drunk:
    #Initializate the contructor
    def __init__(self, name):
        self.name = name

class TraditionalDrunk(Drunk):
    #Initializate the contructor
    def __init__(self, name):
        #Heritage from Drunk
        super().__init__(name)
    
    #Methods
    def walk(self):
        #4 kind of movement allowed
        #Random choice selects one of all options whit the same probability 
        return  random.choice([(0, 1),
                               (0,-1),
                               (1, 0),
                               (-1,0)]
                             )

#coordinates.py
##################################

class Coordinate:
    #Initializate the contructor
    def __init__(self,x,y):
        #Initializate variables
        self.x = x
        self.y = y
    
    #Methods
    def move(self, delta_x, delta_y):
        #Return the new position in x & y
        return Coordinate(self.x+delta_x, self.y+delta_y)
    def distance(self, coordinate2):
        #Calculate the distance with Pitagorical Theorem
        delta_x = self.x - coordinate2.x
        delta_y = self.y - coordinate2.y
        return (delta_x**2 + delta_y**2)**0.5


#field.py
##################################

class Field:
    #Initializate the contructor
    def __init__(self):
        #Dictionary to save the coordinates
        self.drunk_coordinates = {}

    #Methods
    #New drunk
    def add_drunk(self, drunk, coordinate):
        self.drunk_coordinates[drunk] = coordinate
    #Move drunk
    def move_drunk(self, drunk):
        delta_x, delta_y = drunk.walk()
        #Append new steps for path 
        path_x.append(path_x[-1] + delta_x)
        path_y.append(path_y[-1] + delta_y)

        current_coordinate = self.drunk_coordinates[drunk]
        new_coordinate = current_coordinate.move(delta_x, delta_y)
        self.drunk_coordinates[drunk] = new_coordinate
    #Get drunk coordinates
    def get_coordinate(self, drunk):
        return self.drunk_coordinates[drunk]
    

#random_path.py
##################################
#from drunk import Drunk
#from field import Field
#from coordinate import Coordinate
import random
#for plotting
from bokeh.plotting import figure, show


#Methods
#Walking steps
def walking(field, drunk, step):
    start = field.get_coordinate(drunk)
    for _ in range(step):
        field.move_drunk(drunk) 
    return start.distance(field.get_coordinate(drunk))

#Simulate walk
def simulate_walk(step, trials, traditional_drunk):
    #set name for the Drunk
    drunk = traditional_drunk(name='Travis')
    #Establish the start point coordinates 
    origin = Coordinate(0,0)
    distances = []
    for _ in range(trials):
        field = Field()
        field.add_drunk(drunk, origin)
        walk_simulation = walking(field, drunk, step)
        distances.append(round(walk_simulation,1))
    return distances

#Plot results
def plotting(x, y):
    plot = figure(title='Random path',
                  x_axis_label='Steps',
                  y_axis_label='Distance')
    plot.line(x,y, legend_label='Mean distance')
    print('plotting')
    show(plot)

#Plot path
def plot_path(x,y):
    plot = figure(title='Random path')
    plot.line(x,y)
    show(plot)

#Main
def main(steps, trials,traditional_drunk):
    #Create mean distances array
    mean_distance_for_walking = []
    #Call for 10, 100, 1000 & 10000 steps
    for step in steps:
        #Results
        distance = simulate_walk(step, trials, traditional_drunk)
        mean_distance = round(sum(distance) / len(distance), 4)
        max_distance = max(distance)
        min_distance = min(distance)
        mean_distance_for_walking.append(mean_distance)
        print(f'{traditional_drunk.__name__} random walk of {step} steps')
        print(f'Mean = {mean_distance}')
        print(f'Min = {min_distance}')
        print(f'Max = {max_distance}')  
    #Plot
    # plotting(steps, mean_distance_for_walking)

    #plot path
    plot_path(path_x, path_y)

#if __name__ == '__main__':
#number of steps the the drunk is gonna do 
# steps = [10, 100, 1000, 10000]
steps = [100000]
#Number of trials
trials = 1
#Call main
main(steps, trials, TraditionalDrunk)