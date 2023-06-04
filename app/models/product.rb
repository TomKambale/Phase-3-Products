class Product ActiveRecord::Base
    has_many :review
    has_many :users, through: :reviews

end