class CreateZnajomis < ActiveRecord::Migration
  def change
    create_table :znajomis do |t|

      t.timestamps
    end
  end
end
