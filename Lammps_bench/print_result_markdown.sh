cat performance.txt | grep Performance | awk 'BEGIN{print "| # of cores | ns/day | hours/ns | timeseteps/s |";print "|:----:|:----:|:----:|"}{print "| " NR " | " $2 " | " $4 " | "$6 " |"}'
