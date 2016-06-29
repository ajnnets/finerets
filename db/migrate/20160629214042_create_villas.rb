class CreateVillas < ActiveRecord::Migration
  def change
    create_table :villas do |t|
      t.string :name
      t.text :description
      t.integer :guest_count
      t.integer :bedroom_count
      t.string :villa_detail_heading
      t.string :love_points_heading
      t.string :villa_rates_heading
      t.string :need_to_know_heading
      t.string :feature_and_facility_heading
      t.json :similar_villas
      t.boolean :published
      t.references :area, index: true
      t.references :region, index: true
      t.references :country, index: true
      t.references :continent, index: true

      t.timestamps
    end
  end
end
