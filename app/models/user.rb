class User < ApplicationRecord
    has_many :user_medicines, dependent: :delete_all
    has_many :medicines, through: :user_medicines

    validates :username, presence: true, uniqueness: true
    has_secure_password
end
