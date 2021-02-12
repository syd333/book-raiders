class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre
  has_many :reviews 

 

  def avg_rating
    array = []
    self.reviews.each do |r|
      array << r.rating
    end
    sum = array.inject(0){|sum, x| sum + x }
    total = sum.to_f / array.length.to_f
    total.to_f
  end


end
