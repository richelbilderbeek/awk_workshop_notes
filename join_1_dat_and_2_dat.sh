#!/bin/bash
sort 1.dat > 1_sorted.dat
sort 2.dat > 2_sorted.dat
join 1_sorted.dat 2_sorted.dat
