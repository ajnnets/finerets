class VillaRate < ActiveRecord::Base
  belongs_to :villa
  belongs_to :country
end
