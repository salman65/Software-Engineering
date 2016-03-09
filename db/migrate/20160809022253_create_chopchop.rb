class CreateChopchop < ActiveRecord::Migration
  def change
    create_table :chopchops do |t|
      t.string :food_item
      t.text :description
      t.string :price
      t.timestamps
    end
  end
end