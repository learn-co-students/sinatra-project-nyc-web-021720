class Restaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :city
      t.string :cuisine
      t.integer :rating
      t.string :address
    end
  end
end
