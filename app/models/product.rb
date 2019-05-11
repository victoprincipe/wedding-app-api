class Product < ApplicationRecord
    validates :name, :desc, :price, :img, :amount, presence: true
end
