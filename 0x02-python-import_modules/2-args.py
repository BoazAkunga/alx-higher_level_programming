#!/usr/bin/python3

if __name__== "__main__":
    from sys import argv
    b = len(argv) - 1
    if b < 1:
        print("{} arguments.".format(b))
    elif b == 1:
        print("{} argument:".format(b))
    else:
        print("{} arguments:".format(b))
    for i in range(b):
        print("{}: {:s}".format(i + 1, argv[i + 1]))
