class Payment < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :user
  serialize :params

end
