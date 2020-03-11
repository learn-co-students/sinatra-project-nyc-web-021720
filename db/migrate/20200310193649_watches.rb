class Watches < ActiveRecord::Migration[5.2]
  def change
    create_table :watches do |t|
      t.string :username
      t.string :restaurant
    end
  end
end
