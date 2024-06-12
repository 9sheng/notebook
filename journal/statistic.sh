(head -75 buddhism-2019.org && cat buddhism-202*) \
  | awk '/[0-9]{2}-[0-9]{2}/ { n += $8; m +=1; } END { print "total_count avg_per_day days years"; print n, n/m, m, m/356.0; }' \
  | column -t
