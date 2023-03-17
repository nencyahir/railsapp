class CreatePhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.string :p_name
      t.string :p_type

      t.timestamps
    end
  end
end
