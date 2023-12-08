races = <<RACES
  Time:      7  15   30
  Distance:  9  40  200
RACES


time = races.split("\n")[0]
distance = races.split("\n")[1]

puts "time #{time.split(":")[1].split(" ")}"
puts "distance #{distance.split(":")[1].split(" ")}"
# first = RACES.split("\n")
# puts races.split("\n")[0].split(":")[1].split(" ")[0]



first_race = {
  0 => 0, 
  1 => 6, 
  2 => 10, 
  3 => 12, 
  4 => 12, 
  5 => 10, 
  6 => 6, 
  7 => 0
}



# Time:        59     68     82     74
# Distance:   543   1020   1664   1022