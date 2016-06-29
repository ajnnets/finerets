class Villa < ActiveRecord::Base
  belongs_to :area
  belongs_to :region
  belongs_to :country
  belongs_to :continent
end
