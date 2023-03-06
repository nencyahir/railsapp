class ChangePNameColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :products, :p_name, :text
  end
end
