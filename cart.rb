cart = {}

while true

  print 'Enter product id: '
  id = gets.chomp

  print 'Enter amount (how much items you want to order): '
  amount = gets.chomp.to_i

  # read hash value (0 if it's not exists)
  x = cart[id].to_i

  # increase value
  x = x + amount

  # set hash value
  cart[id] = x

  puts cart.inspect

  # view total items in your cart
  total = 0
  cart.each do |key, value|
    total = total + value
  end

  puts "Total items in your cart: #{total}"

end

puts '='
