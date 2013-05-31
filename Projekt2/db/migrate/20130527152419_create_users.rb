class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
	  t.string :username
	  t.string :user_surname
	  t.string :login
      t.string :password
      t.string :email
      t.date :register_date
      t.timestamps
    end
  end
end
