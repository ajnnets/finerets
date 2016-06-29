class CreateFeatureAndFacilities < ActiveRecord::Migration
  def change
    create_table :feature_and_facilities do |t|
      t.string :name
      t.text :description
      t.references :villa, index: true

      t.timestamps
    end
  end
end
