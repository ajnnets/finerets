class CreateWhatWeLoves < ActiveRecord::Migration
  def change
    create_table :what_we_loves do |t|
      t.text :points
      t.references :villa, index: true

      t.timestamps
    end
  end
end
