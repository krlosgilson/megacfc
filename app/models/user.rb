class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 80 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 80 }  
end
