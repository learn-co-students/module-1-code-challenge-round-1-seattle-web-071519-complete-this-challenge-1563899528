class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def Customer.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end


  def add_review(restaurant, content, rating)
    # given a restaurant object, some review content (as a string), and a star rating (as an integer), creates a new review and associates it with that customer and restaurant.
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    # Returns the total number of reviews that a customer has authored
    self.reviews.count
  end


  def restaurants
    # Returns a unique array of all restaurants a customer has reviewed
    restaurants = self.reviews.collect do |review|
      review.restaurant
    end
    restaurants.uniq
  end

  def Customer.find_by_name(name)
    # given a string of a full name, returns the first customer whose full name matches
    Customer.all.find do |customer|
      customer.full_name.downcase == name.downcase
    end
  end

  def Customer.find_all_by_first_name(name)
    #  given a string of a first name, returns an array containing all customers with that first name
    Customer.all.select do |customer|
      customer.first_name.downcase == name.downcase
    end
  end

  def Customer.all_names
    # should return an array of all of the customer full names
    Customer.all.collect do |customer|
      customer.full_name
    end
  end

end
