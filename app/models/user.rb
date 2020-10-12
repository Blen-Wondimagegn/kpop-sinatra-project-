class User < ActiveRecord::Base
  has_many :kpop_groups
  has_secure_password 
  validates :email, presence: true
  validates :email, uniqueness: true
  
end 

