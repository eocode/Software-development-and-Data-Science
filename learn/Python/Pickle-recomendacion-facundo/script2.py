import pickle

with open('data.pickle', 'rb') as f:
        players = pickle.load(f)
        print(players)