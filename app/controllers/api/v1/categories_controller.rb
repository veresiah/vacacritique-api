class Api::V1::CategoriesController < ApplicationController

    def index 
        categories = Category.all
        render json: categories.to_json(except: [:created_at, :updated_at])
    end 

    def create
        category = Category.create(category_params)
        render json: category 
    end 

    def destroy 
        category = Category.find(params[:id])
        if cateogry.destroy 
            render json: {message: 'Category was deleted'}
        end 
    end 

    private
    def category_params
        params.require(:category).permit(:name, :description)
    end 
end
