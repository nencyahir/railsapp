class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :rating
      t.references :rateable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
