class AddTotalpriceToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :totalprice, :string
  end
end
