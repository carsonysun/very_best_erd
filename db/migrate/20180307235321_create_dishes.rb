class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :cuisine_id
      t.string :dish_details

      t.timestamps

    end
  end
end
