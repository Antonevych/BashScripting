#!/bin/bash

python2="Python2.7.0"
python3=$(python3 --version)
echo -e  "\nThis script compares two versions of python: $python2 and $python3."

if [ "$python2" == "$python3" ]; then
    echo -e "\nThese versions of python are the same."
    else
    echo -e "\nThese versions of python are different."
fi

echo -e "\nIt is recommended to use $python3\n"
