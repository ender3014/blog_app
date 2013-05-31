class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.integer :position
      t.integer :photo_id
      t.integer :slideshow_id

      t.timestamps
    end
  end
end
