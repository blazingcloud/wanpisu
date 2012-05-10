class AddGdocStuffToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :google_user, :string
    add_column :rooms, :google_password, :string
    add_column :rooms, :google_spreadsheet_key, :string
  end
end
