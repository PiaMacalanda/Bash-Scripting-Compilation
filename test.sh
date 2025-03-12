#!/bin/bash

echo -n "Enter your grade"
read grade

if [[$grade -gt 60 && $grade -lt 80]]; then
echo "Grade is F"
fi