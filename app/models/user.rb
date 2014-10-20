class User < ActiveRecord::Base
  validates :username, uniqueness: true
  validates :email, uniqueness: true
end
