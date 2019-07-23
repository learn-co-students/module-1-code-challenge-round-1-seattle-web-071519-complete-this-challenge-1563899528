require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cust1 = Customer.new("Dave", "Smith")
cust2 = Customer.new("Sasha", "Stevens")
cust3 = Customer.new("Missy", "King")
cust4 = Customer.new("Missy", "Joe")


rest1 = Restaurant.new("Food place")
rest2 = Restaurant.new("other place")
rest3 = Restaurant.new("test place")
rest4 = Restaurant.new("ABC Eats")


review1 = Review.new(cust1, rest2, "so good", 4)
review2 = Review.new(cust1, rest3, "really good", 5)
review3 = Review.new(cust2, rest1, "kinda good", 3)
review4 = Review.new(cust4, rest1, "very good", 5)
review5 = Review.new(cust2, rest2, "not good", 2)
review6 = Review.new(cust3, rest2, "ew", 0)
review7 = Review.new(cust4, rest2, "soooooooooooooo goood", 6)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line