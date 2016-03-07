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

class CreateZakir < ActiveRecord::Migration
  def change
    create_table :zakir do |t|
      t.string :food_item
      t.text :description
      t.string :price
      t.timestamps
    end
  end
end

class CreateFlavours < ActiveRecord::Migration
  def change
    create_table :flavours do |t|
      t.string :food_item
      t.text :description
      t.string :price
      t.timestamps
    end
  end
end

class CreateChopChop < ActiveRecord::Migration
  def change
    create_table :chop_chop do |t|
      t.string :food_item
      t.text :description
      t.string :price
      t.timestamps
    end
  end
end

class CreateKhokha < ActiveRecord::Migration
  def change
    create_table :khokha do |t|
      t.string :food_item
      t.text :description
      t.string :price
      t.timestamps
    end
  end
end