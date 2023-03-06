class AddIndexPId < ActiveRecord::Migration[7.0]
  def change
    add_index :products, :p_id
  end
end
