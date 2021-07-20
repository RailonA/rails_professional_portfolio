class User < ApplicationRecord
    attr_accessor :fullname, :email, :body
    validates :fullname, :email, :body, presence: true
  end