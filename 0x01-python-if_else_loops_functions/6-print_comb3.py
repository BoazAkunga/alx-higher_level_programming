#!/usr/bin/python3
for first_number in range(0, 10):
    for sec_number in range(first_number + 1, 10):
        if first_number == 8 and sec_number == 9:
            print("{}{}".format(first_number, sec_number))
        else:
            print("{}{}, ".format(first_number, sec_number), end='')
