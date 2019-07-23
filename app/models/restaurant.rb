class Restaurant
  attr_reader :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers

  end

  #currently returns not only reviews-would need to edit
  def reviews
    revarr= Reviews.all.select do |revs|
      revs.restaurant ==self
    end
  end

  def average_star_rating
    reviews.
  end

  def longest_review


  end

  def self.find_by_name(name)
  end

  

end
