class CreateMusics < ActiveRecord::Migration[5.0]
  def change
    create_table :musics do |t|
      t.string :name
      t.string :comment
      t.string :link
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
