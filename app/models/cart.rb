class Cart < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id
  has_many :photo_carts
  has_many :photos, :through => :photo_carts
end
