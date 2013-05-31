class CreateUser3s < ActiveRecord::Migration
  def change
    create_table :user3s do |t|
      t.float :uz1
      t.float :uz2

      t.timestamps
    end
  end
end
