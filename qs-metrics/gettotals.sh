#!/bin/sh
ruby ./getxero.rb
grep Reconcile results.log |cut -d " " -f 2 | awk '{ SUM += $1} END { print SUM }'

