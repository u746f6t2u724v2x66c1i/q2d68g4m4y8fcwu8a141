n, k = gets.split.map(&:to_i)
to = []
n.times do
  to << gets.split.map(&:to_i)
end

current = 1
k.times do
  next_square = to[current-1][0]
  if next_square == -1
    current -= 1
  else
    current = next_square
  end
  to.each do |row|
    row.shift
  end
  puts current
end
