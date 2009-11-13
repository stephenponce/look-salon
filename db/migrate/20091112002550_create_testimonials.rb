class CreateTestimonials < ActiveRecord::Migration
  def self.up
    create_table :testimonials do |t|
      t.string :body
      t.string :title
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :testimonials
  end
end
