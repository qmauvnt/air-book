class Book < ActiveRecord::Base
has_many :reviews, dependent: :destroy
belongs_to :gerne
end
