#!/bin/bash

cat $1 | grep -oEw "[aA][:alpha]"
