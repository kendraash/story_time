class Story < ActiveRecord::Base
  validates :title, :image, :author, :presence => true

  has_many :sentences
end
