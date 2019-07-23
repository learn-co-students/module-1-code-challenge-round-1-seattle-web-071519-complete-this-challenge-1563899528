class Customer
  attr_reader :first_name, :last_name
  @@all=[]

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  #revise to print out content, not id
  #edit broke this method
  def add_review(restaurant, content, rating)
    Review.new(review, self, rating)
  end

  #done
  def num_reviews
    Review.all.map do |reviews|
      reviews.customer == self
    end
  end

  #NameError: uninitialized constant Customer::Reviews
  # def allreviews
  #   Reviews.all.collect do |review|
  #     review.customer==self
  #   end
  # end

  def reviews
    allreviews.select do |reviews|
      reviews.length == self
    end
  end



  def self.find_by_name(name)
    @@all.find do |cust|
      cust.first_name == name
    end
  end

  def self.find_all_by_first_name(name)
    @@all.select do |cust|
      cust.first_name== name
    end
  end

  def self.all_names
    @@all.first_name
  end


end
