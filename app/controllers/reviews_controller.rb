class ReviewsController < ApplicationController

    before_action :find_review, only: [:edit, :update, :destroy]

    before_action :set_user_book, only: [:new, :create, :edit, :update]

    

    def new
        @review = Review.new 
        # id = params[:book_id]
        # if id && @book = Book.find_by_id(id)
        #     @review = @book.review.build 
        # else  
        #     @review = current_user.reviews.build
        # end
        # if @book
        #     @review = @book.reviews.new
        # else  
        #     @review = current_user.reviews.new

        # end
    end

    def create 
        @review = Review.new(review_params)
        @review.user_id = current_user 
        if @review.save
            redirect_to @review.book
        else   
            render :new
        end
        # @review = current_user.reviews.build(review_params)
        # if @review.save 
        #     redirect_to @review.book
        # else  
        #     render :new 
        # end
    end

    def edit 
    end

    def update 
        @review.update(review_params)
        @review.user_id = current_user 
        if @review.save
            redirect_to @review.book
        else  
            render :edit 
        end
    end

    def destroy
        @review.destroy 
        redirect_to user_path(@review.user)
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
        params.require(:review).permit(:message, :rating, :book_id)
    end

    
end
