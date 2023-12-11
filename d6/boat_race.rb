races = <<RACES
  Time:      7  15   30
  Distance:  9  40  200
RACES

# races = <<RACES
#   Time:        59     68     82     74
#   Distance:   543   1020   1664   1022
# RACES

# breaking down the input
time_row = races.split("\n")[0]
distance_row = races.split("\n")[1]

time_arr = time_row.split(":")[1].split(" ").map!(&:to_i)
distance_arr = distance_row.split(":")[1].split(" ").map!(&:to_i)

puts "time_arr: #{ time_arr }"
puts "distance_arr: #{distance_arr}"

# calculate possible outcomes for each race
time_arr.each do |num|
  race_arr = *(1..num)
  
  puts race_arr
end


# first_race = {
#   0 => 0, 
#   1 => 6, 
#   2 => 10, 
#   3 => 12, 
#   4 => 12, 
#   5 => 10, 
#   6 => 6, 
#   7 => 0
# }






# Time:        59     68     82     74
# Distance:   543   1020   1664   1022