class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :address
      t.string :phone
      t.string :items

      t.timestamps null: false
    end
  end
end
