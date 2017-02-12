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
        new_cocktail = Cocktail.create(params_cocktail)
        render json: Cocktail.all
      end

      def edit

      end

      def update

      end

      def destroy
        cocktail = Cocktail.find(params[:id])
        cocktail.destroy
      end

      private

      def params_cocktail
        params.require(:cocktail).permit(:name, :description, :instructions, :source, :proportions)
      end
    end
  end
end
