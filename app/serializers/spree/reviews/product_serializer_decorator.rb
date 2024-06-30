# frozen_string_literal: true

module Spree
  module Reviews
    module ProductSerializerDecorator
      def self.prepended(base)
        base.attributes :avg_rating, :reviews_count
      end
    end
  end
end

::Spree::V2::Storefront::ProductSerializer.prepend(Spree::Reviews::ProductSerializerDecorator)
