class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def Restaurant.all
    @@all
  end

  def reviews
    # returns an array of all reviews for that restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    # Returns a unique list of all customers who have reviewed a particular restaurant.
    customers = self.reviews.collect do |review|
      review.customer
    end
    customers.uniq
  end

  def average_star_rating
    # returns the average star rating for a restaurant based on its reviews
    ratings = self.reviews.collect do |review|
      review.rating
    end
    ratings.sum.to_f / ratings.count.to_f
  end

  def longest_review
    # returns the longest review content for a given restaurant
    self.reviews.max_by do |review|
      review.content.length
    end
  end

  def Restaurant.find_by_name(name)
    # given a string of restaurant name, returns the first restaurant that matches
    Restaurant.all.find do |restaurant|
      restaurant.name.downcase == name.downcase
    end
  end

end
