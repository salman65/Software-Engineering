class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :ontime
      t.integer :foodquality
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
