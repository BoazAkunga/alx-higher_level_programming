#!/usr/bin/python3
if __name__ == "__main__":
    from sys import argv
    sumin = 0
    for b in range(1, len(argv)):
        sumin += int(argv[b])
    print("{}".format(sumin))
