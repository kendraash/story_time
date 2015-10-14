class Sentence < ActiveRecord::Base
  validates :user, :body, :presence => true

  belongs_to :story
end
