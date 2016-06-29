class Region < ActiveRecord::Base
  belongs_to :country
  has_many :villas
  has_many :areas
end
