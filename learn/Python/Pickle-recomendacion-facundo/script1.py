import pickle
players = [
        {
            'user_id':  1,
            'score':  255,
            'level':  7,
            'killed_monsters':  36,
            'deaths':  5,
            'rank': 'normal'
        },
        {
            'user_id':  2,
            'score':  12248,
            'level':  30,
            'killed_monsters':  1140,
            'deaths':  11,
            'rank': 'pro'
        },
        {
            'user_id':  3,
            'score':  10,
            'level':  1,
            'killed_monsters':  1,
            'deaths':  20,
            'rank': 'noob'
        },
    ]
with open('data.pickle', 'wb') as f:
        pickle.dump(players, f)