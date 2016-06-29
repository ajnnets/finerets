class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.string :name
      t.references :continent, index: true
      t.boolean :published

      t.timestamps
    end
  end
end
