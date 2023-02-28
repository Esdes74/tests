# This is a little program to creat a random list of number without repetition
# you can use it with 1, 2 or 3 parameters

from random import *
import sys

def generate_list(nbr, mini, maxi):
    L = []
    T = []
    for i in range(mini, maxi):
        L.append(i)
    for i in range(nbr):
        if (nbr < maxi - mini):
            nbr = maxi - mini - 1
        r = randint(0, nbr) % (nbr - i)
        T.append(L[r])
        L[r] = L[nbr - i - 1]
    return T

def print_res(T):
    res = ""
    for i in T:
        res += str(i)
        res += ' '
    print(res)

T = []
    # Je n'ai qu'un argument donc c'est le nombre de nombre que je veux
if (len(sys.argv) == 2):
    nbr = int(sys.argv[1])
    T = generate_list(nbr, 0, nbr)
    print_res(T)

    # J'ai deux arguments donc j'ai le nombre de nombre puis le max
elif (len(sys.argv) == 3):
    nbr = int(sys.argv[1])
    maxi = int(sys.argv[2])
    T = generate_list(nbr, min(0, maxi), max(0, maxi))
    print_res(T)

    # J'ai 3 arguments donc j'ai le nombre, le min et max
elif (len(sys.argv) == 4):
    nbr = int(sys.argv[1])
    mini = int(sys.argv[2])
    maxi = int(sys.argv[3])
    if (nbr < maxi - mini):
        T = generate_list(nbr, min(mini, maxi), max(mini, maxi))
    else:
        T = generate_list(max(mini, maxi) - min(mini, maxi), min(mini, maxi),\
                max(mini, maxi))
    print_res(T)

else :
    print("pas le bon nombre d'arguments!!!")
