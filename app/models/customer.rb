class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    reviews.length
  end

  #helper method to get array of review instances for a customer
  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants
    reviews.collect do |review|
      review.restaurant
    end.uniq
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    self.all.collect do |customer|
      customer.full_name
    end
  end
end
