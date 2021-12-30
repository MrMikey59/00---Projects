#! /usr/bin/env python
#  -*- coding: utf-8 -*-
# ======================================================
#     birthdays2.py
#  ------------------------------------------------------
# Created for Full Circle Magazine Issue #158 June 2020
# Written by G.D. Walters
# Copyright (c) 2020 by G.D. Walters
# This source code is released under the MIT License
# ======================================================
from numpy.random import seed
from numpy.random import randint
import datetime
# seed random number generator
seed(1)

todo = 50000
sampleloops = 100
samples = []
for loop in range(sampleloops):
    dates = []
    for tdo in range(todo):
        # The following example is slightly modified from one provided by kite...
        # start_date = datetime.date(1940, 1, 1)
        start_date = datetime.date(1970, 1, 1)
        end_date = datetime.date(2020, 6, 1)

        time_between_dates = end_date - start_date
        days_between_dates = time_between_dates.days
        random_number_of_days = randint(0, days_between_dates)
        random_date = start_date + \
            datetime.timedelta(days=random_number_of_days)
        dates.append(random_date)

    # print(dates)
    datetocheck = datetime.date(1986, 6, 24)
    found = dates.count(datetocheck)
    samples.append(found)
    print(f'Found {dates.count(datetocheck)} occurrences')
print(f'Results: {samples}')
print(f'Average is {sum(samples)/len(samples)}')