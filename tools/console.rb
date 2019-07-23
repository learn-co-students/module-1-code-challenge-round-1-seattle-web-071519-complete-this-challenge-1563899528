require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


c1 = Customer.new("Neil", "Gaiman")
c2 = Customer.new("Amanda", "Palmer")
c3 = Customer.new("Terry", "Pratchett")
c4 = Customer.new("Ursula", "Le Guin")
c5 = Customer.new("Ursula", "Vernon")

rest1 = Restaurant.new("The Granite Grizzly")
rest2 = Restaurant.new("The Proud Duck")

r1 = Review.new(c1, rest1, "Heck yeah, loved this place.", 5)
r2 = Review.new(c2, rest2, "Ehhh, I mean, it's food.", 3)
r3 = Review.new(c2, rest1, "Just, no.", 1)
r4 = Review.new(c3, rest2, "Don't think so.", 2)
r5 = Review.new(c3, rest2, "Solid.", 4)
r6 = Review.new(c3, rest2, "MY FAVORITE", 5)
r7 = Review.new(c4, rest1, "ok i guess", 3)
r8 = Review.new(c4, rest2, "needs serious improvement", 2)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line