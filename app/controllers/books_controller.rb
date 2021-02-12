class BooksController < ApplicationController
    before_action :find_book, only: [:show]

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
