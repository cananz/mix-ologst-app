class CreateShakers < ActiveRecord::Migration[6.0]
  def change
    create_table :shakers do |t|
      t.integer :cocktail_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
