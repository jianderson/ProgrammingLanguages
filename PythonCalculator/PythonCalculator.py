import sys
import math



def multiply(first, second):
    return first * second

def add(first, second):
    return first + second

def minus(first, second):
    return first - second

def divide(first, second):
    return first/second

def mod(first, second):
    return first % second

def power(first, second):
    return pow(first, second)




def main():

    sys.argv[1] = int(sys.argv[1])
    sys.argv[3] = int(sys.argv[3])

    if sys.argv[2] == "+":
        print(add(sys.argv[1], sys.argv[3]))

    if sys.argv[2] == "-":
        print(minus(sys.argv[1], sys.argv[3]))

    if ("*") in sys.argv:
        print(multiply(sys.argv[1], sys.argv[3]))

    if sys.argv[2] == "/":
        print(divide(sys.argv[1], sys.argv[3]))

    if sys.argv[2] == "%":
        print(mod(sys.argv[1], sys.argv[3]))

    if sys.argv[2] == "^":
        print(power(sys.argv[1], sys.argv[3]))


if __name__ == "__main__":
    main()
