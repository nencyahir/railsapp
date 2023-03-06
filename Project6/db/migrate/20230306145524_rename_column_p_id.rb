class RenameColumnPId < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :p_id, :pp_id
  end
end
