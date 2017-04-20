class CreateTransports < ActiveRecord::Migration[5.0]
  def change
    create_table :transports do |t|
      t.string :depart
      t.string :return
      t.string :type
      t.text :t_message
      t.string :place_number
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
