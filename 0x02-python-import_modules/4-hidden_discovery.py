#!/usr/bin/python3
if __name__ == "__main__":
    from hidden_4 import *
    allfo = dir()
    for b in range(0, len(allfo)):
        if allfo[b][:2] != "__":
            print("{:s}".format(allfo[b]))
