require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

puts pizzahut= Restaurant.new("Pizza Hut")
tacoshop= Restaurant.new("Taco Shop")
sonic= Restaurant.new("Sonic")
dunkin= Restaurant.new("Dunkin Donuts")


puts leo=Customer.new("Leonardo", "Dicaprio")
mark= Customer.new("Mark", "Hamill")
obama= Customer.new("Barak", "Obama")

#puts review1= Review.new("testing", leo, 4)

puts Customer.find_all_by_first_name("Mark")


#puts leo.num_reviews

#puts addreview1= leo.add_review(pizzahut, "testing2", 1)


# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
#leave this here to ensure binding.pry isn't the last line