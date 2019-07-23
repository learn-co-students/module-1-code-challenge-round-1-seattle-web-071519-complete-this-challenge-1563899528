class Review
    attr_reader :customer, :restaurant
    attr_accessor :content, :rating
    @@all = []
    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @content = content
        if rating > 5
            @rating = 5
        elsif rating < 1
            @rating = 1
        else
            @rating = rating
        end
        @@all << self
    end

    def self.all
        @@all
    end
  
end

