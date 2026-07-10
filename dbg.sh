#!/usr/bin/env bash

set -eu

echo "input problem number (a, b, c...)"
read problem

g++ -g ${problem}.cpp -o .out/${problem}.c
lldb .out/${problem}.c
