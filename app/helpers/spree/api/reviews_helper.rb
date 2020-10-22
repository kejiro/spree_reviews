module Spree
  module Api
    class ReviewsHelper < ApiHelpers
      @@product_attributes += [:avg_rating, :reviews_count]
    end
  end
end