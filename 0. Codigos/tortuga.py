import turtle

def mover(tortuga):
    tortuga.forward(100)
    tortuga.right(90)

window = turtle.Screen()
tortuga = turtle.Turtle()

mover(tortuga)
mover(tortuga)
mover(tortuga)
mover(tortuga)

window.mainloop()