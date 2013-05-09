class Link < ActiveRecord::Base
  attr_accessible :description, :url

  validates :url, :presence => true
end
