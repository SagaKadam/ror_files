class User < ApplicationRecord
    has_one :user_profile
    has_many :posts
    has_many :commments
    has_many :likes
end
