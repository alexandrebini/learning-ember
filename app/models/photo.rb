class Photo < ActiveRecord::Base
  attr_accessible :title, :url
  has_many :comments

  validates_presence_of :title, :url
end
