#prob.py
###########################################
import random
#for plotting
from bokeh.plotting import figure, show

#throw dice
def throw_dice(n_shots):
    shot_secuence = []
    for _ in range(n_shots):
        shot = random.choice([1,2,3,4,5,6])
        shot_secuence.append(shot)
    return shot_secuence

#
def plot(sim, prob):
    plot = figure(title='Probability get 1 with 1 shot',
                  x_axis_label='Attempts',
                  y_axis_label='Probability')
    
    plot.line(sim,prob)
    show(plot)

#Calculus of probability 
def calc_prob(shots, n_simulation):
    shot_1 = 0
    for shot in shots:
        if 1 in shot:
            shot_1 += 1
    return shot_1 / n_simulation

#Main
def main(n_shots, n_simulation):
    prob=[]
    sim=[]
    for n in range(1,n_simulation,100):
        shots=[]
        for _ in range(n):
            shots_secuence = throw_dice(n_shots)
            shots.append(shots_secuence)
  
        prob_shot_1 = calc_prob(shots, n)
        #Append values
        prob.append(prob_shot_1)
        sim.append(n)

    #prob_shot_1 = calc_prob(shots, n_simulation)
    #print(f'Prob to get 1:  {prob_shot_1}')

    #plot
    plot(sim, prob)
    

#if __name__ == "__main__":
#Inputs
n_shots = int(input('Try shots:'))
n_simulation = int(input('Simulation number:'))

#Call main
main(n_shots, n_simulation)