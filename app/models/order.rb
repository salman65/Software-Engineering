class Order < ActiveRecord::Base
  belongs_to :user
  #validates :items, uniqueness: true
end
