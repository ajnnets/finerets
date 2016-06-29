class Country < ActiveRecord::Base
  belongs_to :continent
  has_many :regions
  has_many :villas
end
