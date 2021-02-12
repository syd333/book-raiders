class ReviewsController < ApplicationController

    before_action :find_review, only: [:edit, :update, :destroy]

    before_action :set_user_book, only: [:new, :create, :edit, :update]

    def new
        @review = Review.new 
    end

    def create 
        @review = Review.new(review_params) 
        if @review.save
            redirect_to @review.book
        else   
            render :new
        end
    end

    def edit 

    end

    def update 
        @review.update(review_params)
        if @review.save
            redirect_to @review.book
        else  
            render :edit 
        end
    end

    def destroy
        
    end

    private

    def set_user_book
        @books = Book.all
        @users = User.all
    end

    def find_review
        @review = Review.find(params[:id])
    end

    def review_params
        params.require(:review).permit(:message, :rating, :user_id, :book_id)
    end
end
