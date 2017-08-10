#!/bin/bash

echo "Input $@"
echo "Testing for $2"
pattern=$1
case "$1" in
    *$2*)
        echo "Gotcha!"
        exit 0
        ;;
    *)
        echo "Not found"
        exit 1
        ;;
esac

