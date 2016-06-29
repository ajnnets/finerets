class CreatePopularDestinations < ActiveRecord::Migration
  def change
    create_table :popular_destinations do |t|
      t.references :area, index: true
      t.references :region, index: true

      t.timestamps
    end
  end
end
