class Region < ActiveRecord::Base
  belongs_to :country
  has_many :villas
  has_many :areas
  has_one :popular_destination
end
