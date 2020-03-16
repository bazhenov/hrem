#!/bin/sh

make sim &
make gdb
kill %1