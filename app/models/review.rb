class Review
    attr_accessor :review, :rating, :restaurant
    attr_reader :customer
    @@all =[]
    def initialize(review, customer, rating, restaurant)
        @@all << self
    end

    def self.all
        @@all
    end
    
    #not finished
    def customer
        @@all.collect do |reviews|
            reviews.review == self
        end
    end

    def restaurant
    end

    def rating
    end

    def content
    end


end

