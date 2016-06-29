class Continent < ActiveRecord::Base
  has_many :countries
  has_many :villas
end
