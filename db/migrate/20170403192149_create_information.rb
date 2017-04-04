class CreateInformation < ActiveRecord::Migration[5.0]
  def change
    create_table :information do |t|
      t.string :subjet
      t.text :message
      t.string :type_message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
