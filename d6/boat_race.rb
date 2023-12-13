# races = <<RACES
#   Time:      7  15   30
#   Distance:  9  40  200
# RACES

races = <<RACES
  Time:        59     68     82     74
  Distance:   543   1020   1664   1022
RACES

# breaking down the input
time_row = races.split("\n")[0]
distance_row = races.split("\n")[1]

time_arr = time_row.split(":")[1].split(" ").map!(&:to_i)
distance_arr = distance_row.split(":")[1].split(" ").map!(&:to_i)

# puts "time_arr: #{ time_arr }"
# puts "distance_arr: #{distance_arr}"

# calculate possible outcomes for each race
time_arr.each_with_index do |num, t_ind|
  race_arr = *(1..num)
  wins = []

  results = []
  win_counter = 0
  race_arr.each_with_index do |n, r_ind|
    lap_distance = (race_arr.size - (r_ind + 1)) * n
    lap_distance.to_i.is_a?(Integer)
    if lap_distance > distance_arr[t_ind].to_i
      results.push(lap_distance)
      win_counter += 1
    end

    
    if r_ind + 1 == race_arr.size
      wins.push(win_counter.to_i)
    end

    lap_distance = 0
  end
  puts wins.map { |n| n *= n}
end

# puts 32 * 9
puts 1296 * 529 * 81 * 1369 * 288

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