#! /usr/bin/env python
#  -*- coding: utf-8 -*-
# ======================================================
#     cointoss.py
#  ------------------------------------------------------
# Created for Full Circle Magazine Issue #158 June 2020
# Written by G.D. Walters
# Copyright (c) 2020 by G.D. Walters
# This source code is released under the MIT License
# ======================================================
from numpy.random import seed
from numpy.random import randint
# seed random number generator
seed(1)
# "flip" 10 times and do it twice.
# todo = 100000000
todo = 10
loops = 2
for loop in range(loops):
    flips = randint(0, 2, todo)
    print(flips)
    heads = 0
    tails = 0
    for flip in flips:
        if flip == 0:
            tails += 1
        else:
            heads += 1

    print(f'Heads: {heads} - Tails: {tails}')
    pctHeads = (heads/todo) * 100
    print(f'Percentage of Heads: {pctHeads}%')