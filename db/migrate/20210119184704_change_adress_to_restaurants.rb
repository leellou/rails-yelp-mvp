class ChangeAdressToRestaurants < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :adresse, :address
  end
end
