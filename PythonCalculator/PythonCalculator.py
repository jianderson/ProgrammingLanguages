

#user input: 5 * 6
# argv[1]
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

def abs(first):
    return abs(first)






if sys.argv[1] == "*":
    print(multiply(sys.argv[0], sys.argv[2]))

if sys.argv[1] == "+":
    print(add(sys.argv[0], sys.argv[2]))

if sys.argv[1] == "-":
    print(minus(sys.argv[0], sys.argv[2]))

if sys.argv[1] == "/":
    print(divide(sys.argv[0], sys.argv[2]))

if sys.argv[1] == "%":
    print(mod(sys.argv[0], sys.argv[2]))

if sys.argv[1] == "^":
    print(power(sys.argv[0], sys.argv[2]))

if sys.argv[0] == "|":
    print(abs(sys.argv[1]))