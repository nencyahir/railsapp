class RemoveColumnStock < ActiveRecord::Migration[7.0]
  def change
   remove_column :products, :p_stock, :integer
  end
end
