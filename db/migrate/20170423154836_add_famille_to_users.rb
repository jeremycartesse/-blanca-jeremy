class AddFamilleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :famille, :string
  end
end
