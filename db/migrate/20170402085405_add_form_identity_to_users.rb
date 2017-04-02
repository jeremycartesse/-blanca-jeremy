class AddFormIdentityToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :photo_avatar, :string
    add_column :users, :nationality, :string
    add_column :users, :description, :text
  end
end
