class CreateFlavour < ActiveRecord::Migration
  def change
    create_table :flavours do |t|
      t.string :food_item
      t.text :description
      t.string :price
      t.timestamps
    end
  end
end