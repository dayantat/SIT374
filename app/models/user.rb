class User < ApplicationRecord
    validates :name, presence: true #this makes sure the entry cannot be blank
    validates :email, presence: true #this makes sure the entry cannot be blank
end
