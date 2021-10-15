class Medicine < ApplicationRecord
    has_many :user_medicines
    has_many :users, through: :user_medicines

    validates :price, numericality: {less_than_or_equal_to: 100}
end
