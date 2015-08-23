The tidied data set is contained within the file tidydata.txt. This can be easily read with R function read.table().

It has this table like structure:

row structure

180 rows resulting from 30 test subjects during 6 tested activities.

column structure

col 1: subject id
value range 1 .. 30
col 2: activity label
value range LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
col 3 ... col 68: original measurements aggregated as
either the mean value of the measured means
or the mean value of the measured standard deviations