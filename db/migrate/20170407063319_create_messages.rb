class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :subject
      t.text :message
      t.string :type_message
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
