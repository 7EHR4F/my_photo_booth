class PhotoCart < ActiveRecord::Base
  attr_accessible :cart_id, :photo_id, :user_id
  belongs_to :photo
  belongs_to :cart
end
