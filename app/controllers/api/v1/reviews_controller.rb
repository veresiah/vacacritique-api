class Api::V1::ReviewsController < ApplicationController
    def index 
        reviews = Review.all 
        render json: reviews.to_json(except: [:created_at, :updated_at])
    end 

    def create 
        review = Review.create(review_params)
        render json: review, except: [:created_at, :updated_at]
    end 

    def destroy 
        review = Review.find(params[:id])
        if review.destory 
            render json: {message: 'Review was deleted'}
        end 
    end 

end
