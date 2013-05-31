class CreateUser4s < ActiveRecord::Migration
  def change
    create_table :user4s do |t|
      t.string :imie

      t.timestamps
    end
  end
end
