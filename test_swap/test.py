from random import *
import sys

def generate_list(nbr, mini, maxi):
    L = []
    T = []
    count = 0
    for i in range(mini, maxi):
        if (count > nbr):
            break
        count+=1
        L.append(i)
    count = 0
    for i in range(nbr):
        if (count == nbr):
            break
        count+=1
        r = randint(0, nbr) % (nbr - i)
        print(L)
        print(r)
        print(nbr - i - 1)
        T.append(L[r])
        L[r] = L[nbr - i - 1]
    return T

# Je n'ai qu'un argument donc c'est le nombre de nombre que je veux
if (len(sys.argv) == 2):
    nbr = int(sys.argv[1])
    T = []
    T = generate_list(nbr, 0, nbr)
    print(T)
    # for i in range(nbr):
    #     print(randint(-(sys.maxsize - 1), sys.maxsize))

    # J'ai deux arguments donc j'ai le nombre de nombre puis le max
elif (len(sys.argv) == 3):
    nbr = int(sys.argv[1])
    maxi = int(sys.argv[2])
    T = []
    T = generate_list(nbr, 0, maxi)
    print(T)
    # i = 0
    # while (i < nbr and i < maxi):
    #     print(randint(0, maxi))
    #     i+=1

    # J'ai 3 arguments donc j'ai le nombre, le min et max
elif (len(sys.argv) == 4):
    nbr = int(sys.argv[1])
    mini = int(sys.argv[2])
    maxi = int(sys.argv[3])
    T = []
    if (nbr < maxi - mini):
        T = generate_list(nbr, mini, maxi)
    else:
        T = generate_list(maxi - mini, mini, maxi)
    print(T)

else :
    print("pas le bon nombre d'arguments!!!")
