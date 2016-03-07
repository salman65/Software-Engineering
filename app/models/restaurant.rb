 class Restaurant < ActiveRecord::Base
  def self.abc
   @@all_ratings = ['bbq','chinese','fastfood','crisp','biscuits']
  end
 end