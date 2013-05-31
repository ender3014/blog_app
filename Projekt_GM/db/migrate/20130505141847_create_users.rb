class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
	  t.string :address
      t.string :email
      t.date :register_date
	  t.float :longitude
      t.float :latitude
      t.boolean :gmaps
	  
      t.timestamps
    end
  end
end
