class AddColumnsToRetaurantsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :rating, :integer
    add_column :restaurants, :address, :string
  end
end

