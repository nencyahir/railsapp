class AddColumnStock < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :p_stock, :integer
  end
end
