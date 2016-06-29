class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :header
      t.text :description
      t.references :static_page, index: true

      t.timestamps
    end
  end
end
