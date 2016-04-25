class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.integer :year
      t.text :description
      t.string :wine_url
      t.integer :user_id, null: false

      t.timestamps null: false
    end
  end
end
