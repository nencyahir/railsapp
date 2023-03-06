class RollbackColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :p_des, :text

    # By mistake i have created column p_des so i don't want for future,
    # For that rollback to the previous migration
    # command-rails db:rollback

  end
end
