class BooksController < ApplicationController
    skip_before_action :require_login
    before_action :find_book, only: [:show]


    # skip_before_action :require

    def index
        @books = Book.all 
    end

    def show 

    end

    private 

    def find_book
        @book = Book.find(params[:id])
    end

    # def book_params
    #     params.require(:book).permit(:title, :author_id, :genre_id )
    # end
end
