module Api
  module V1
    class ReviewsController < ApplicationController

      def create
        byebug
        @review = Review.new(review_params)
        @jewel = Jewel.find(params[:jewel_id])
        @jewel.reviews << @review
      end

      def update
        @review = Review.new(review_params)
        @jewel = Jewel.find(params[:jewel_id])
        @jewel.reviews << @review
      end


      private


      def review_params
        params.require(:review).permit(:body, :author, :stars, :jewel_id)
      end
    end
  end
end
