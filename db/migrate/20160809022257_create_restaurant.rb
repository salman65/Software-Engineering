class CreateRestaurant < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :number
      t.text :description
      t.string :rating
      t.timestamps
    end
  end
end
