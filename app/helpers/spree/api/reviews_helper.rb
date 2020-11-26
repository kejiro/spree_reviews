module Spree
  module Api
    module ReviewsHelper
      include ApiHelpers
      @product_attributes += [:avg_rating, :reviews_count]
    end
  end
end