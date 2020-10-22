module Spree
  module Reviews::ProductsControllerDecorator
    def self.prepended(base)
      base.helper Spree::ReviewsHelper
    end

    review_fields = [:avg_rating, :reviews_count]
    review_fields.each { |attrib| Spree::PermittedAttributes.product_attributes << attrib }
  end
end

Spree::ProductsController.prepend Spree::Reviews::ProductsControllerDecorator
