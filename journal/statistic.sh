(head -75 buddhism-2019.org && cat buddhism-202*) | awk '{n+=$8;m+=1} END {print n, n/m, m/356.0}'
