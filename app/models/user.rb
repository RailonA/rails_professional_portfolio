class User < ApplicationRecord
    validates :name, :email, :body, presence: true
end
