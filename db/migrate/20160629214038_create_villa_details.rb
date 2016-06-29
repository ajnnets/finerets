class CreateVillaDetails < ActiveRecord::Migration
  def change
    create_table :villa_details do |t|
      t.references :villa, index: true
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
