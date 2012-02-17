class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :password
      t.string :name

      t.timestamps
    end
  end
end
