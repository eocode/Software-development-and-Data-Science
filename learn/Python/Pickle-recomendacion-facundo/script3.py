import pickle

with open('data.pickle', 'rb') as f:
        data = pickle.Unpickler(f)
        players = data.load()
        print(players)