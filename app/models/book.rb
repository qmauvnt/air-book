class Book < ActiveRecord::Base
has_many :reviews, dependent: :destroy
has_many :line_items
has_many :orders, through: :line_items
belongs_to :gerne


before_destroy :in_any_cart

def self.search(search)
  where("title LIKE ?", "%#{search}%") 
  where("abstract LIKE ?", "%#{search}%")
end

private 
def in_any_cart
	if line_items.empty?
		true
	else
		errors.add(:base, "Line_Items presence")
		false
	end
end

	

end
