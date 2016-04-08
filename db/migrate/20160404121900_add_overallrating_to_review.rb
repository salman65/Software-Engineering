class AddOverallratingToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :overallrating, :integer
  end
end
