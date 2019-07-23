class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #helper method to get reviews for a restaurant
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.collect do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    if self.reviews.length > 0
      self.reviews.collect do |review|
        review.rating
      end.sum / (self.reviews.length * 1.0)
    else
      "#{self.name} does not have any star ratings yet."
    end
  end

  def longest_review
    if self.reviews.length > 0
      self.reviews.max_by do |review|
        review.content.length
      end.content
    else
      "#{self.name} does not have any reviews yet."
    end
  end
    
  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

end
