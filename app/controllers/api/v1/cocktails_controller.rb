module Api
  module V1
    class CocktailsController < ApplicationController
      def index
        render json: Cocktail.all
      end

      def show
        render json: Cocktail.find(params[:id])
      end

      def create
        new_cocktail = Cocktail.new(params_cocktail)
        render json: new_cocktail
      end

      def edit

      end

      def update

      end

      def destroy

      end

      private

      def params_cocktail
        params.require(:cocktail).permit!
      end
    end
  end
end
