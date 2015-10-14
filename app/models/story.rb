class Story < ActiveRecord::Base
  validates :title, :image, :author, :presence => true
end
