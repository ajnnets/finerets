class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :subject
      t.text :message
      t.string :client_name
      t.boolean :published

      t.timestamps
    end
  end
end
