class CategoriesController < ApplicationController

    def index
        categories = Category.all 
        render json: CategorySerializer.new(categories)
    end 

    def show
        category = Category.find_by(id: params[:id])
        render json: CategorySerializer.new(category)
    end

    def create
        category = Category.new(category_params)
        if category.save
            render json: CategorySerializer.new(category)
        else
            render json: {errors: category.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private
    def category_params
        params.require(:category).permit(:name)
    end


end
