class CreateVillaRates < ActiveRecord::Migration
  def change
    create_table :villa_rates do |t|
      t.datetime :from
      t.datetime :to
      t.string :season
      t.string :minimum_stay
      t.string :rate
      t.references :villa, index: true
      t.references :country, index: true

      t.timestamps
    end
  end
end
