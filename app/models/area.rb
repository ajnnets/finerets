class Area < ActiveRecord::Base
  belongs_to :region
  has_many :villas
  has_one :popular_destination
end
