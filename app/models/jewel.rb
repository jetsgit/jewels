class Jewel < ActiveRecord::Base
  has_many :reviews
  has_many :images
end
