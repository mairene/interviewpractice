=begin

(start_time, end_time) in 30 min blocks past 9:00 am
(2,3) is 10:00 - 10:30am

input: array of meeting times ranges
output: condensed array of meeting time ranges
#PSEUDOCODE
search for lowest 0th element in each nested array
=end


def condense_meeting_times(time_ranges)

end

#DRIVER CODE
condense_meeting_times([[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]]) == [[0, 1], [3, 8], [9, 12]]