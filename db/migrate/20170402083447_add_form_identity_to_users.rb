class AddFormIdentityToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :first_name, :last_name, :phone_number, :photo_avatar, :nationality :string
    add_column :description, :text
  end
end
