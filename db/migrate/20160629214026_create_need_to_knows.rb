class CreateNeedToKnows < ActiveRecord::Migration
  def change
    create_table :need_to_knows do |t|
      t.text :points
      t.references :villa, index: true

      t.timestamps
    end
  end
end
