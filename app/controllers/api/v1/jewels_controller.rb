module Api
  module V1
    class JewelsController < ApplicationController
      before_action :set_jewel, only: [:show, :edit,:update, :destroy]
      respond_to :json
      def index
        respond_with  Jewel.all.to_json(include: :images), content_type: 'application/flatlander; v=1'
      end

      private

      def set_jewel
        @jewel = Jewel.find(params[:id])
      end

      def jewel_params 
        params.require(:jewel).permit(:name, :description, :shine, 
                                   :price, :rarity, :color, :faces,
                                   :images, :reviews)
      end
    end
  end
end
