# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

restaurants = [{:name => 'Zakir', :number => '0123-1234567', :description => 'fast food, bbq', :rating => '3'},
    	  {:name => 'Flavours', :number => '0123-1234567', :description => 'pizza', :rating => '3.5'},
    	  {:name => 'Chop Chop', :number => '0123-1234567', :description => 'Chinese', :rating => '3'},
      	  {:name => 'Khokha', :number => '0123-1234567', :description => 'fast food, crisp, biscuits', :rating => '4'},
      	  ]

restaurants.each do |rest|
  Restaurant.create!(rest)
end

zakir = [{:food_type => 'Zakir', :description => 'fast food, bbq', :price => '300'},
    	  {:food_type => 'Zakir', :description => 'fast food, bbq', :price => '300'},
    	  {:food_type => 'Zakir', :description => 'fast food, bbq', :price => '300'},
      	  {:food_type => 'Zakir', :description => 'fast food, bbq', :price => '300'},
      	  ]

zakir.each do |rest|
  Zakir.create!(rest)
end

restaurants = [{:name => 'Zakir', :number => '0123-1234567', :description => 'fast food, bbq', :rating => '3'},
    	  {:name => 'Flavours', :number => '0123-1234567', :description => 'pizza', :rating => '3.5'},
    	  {:name => 'Chop Chop', :number => '0123-1234567', :description => 'Chinese', :rating => '3'},
      	  {:name => 'Khokha', :number => '0123-1234567', :description => 'fast food, crisp, biscuits', :rating => '4'},
      	  ]

restaurants.each do |rest|
  Restaurant.create!(rest)
end

restaurants = [{:name => 'Zakir', :number => '0123-1234567', :description => 'fast food, bbq', :rating => '3'},
    	  {:name => 'Flavours', :number => '0123-1234567', :description => 'pizza', :rating => '3.5'},
    	  {:name => 'Chop Chop', :number => '0123-1234567', :description => 'Chinese', :rating => '3'},
      	  {:name => 'Khokha', :number => '0123-1234567', :description => 'fast food, crisp, biscuits', :rating => '4'},
      	  ]

restaurants.each do |rest|
  Restaurant.create!(rest)
end

restaurants = [{:name => 'Zakir', :number => '0123-1234567', :description => 'fast food, bbq', :rating => '3'},
    	  {:name => 'Flavours', :number => '0123-1234567', :description => 'pizza', :rating => '3.5'},
    	  {:name => 'Chop Chop', :number => '0123-1234567', :description => 'Chinese', :rating => '3'},
      	  {:name => 'Khokha', :number => '0123-1234567', :description => 'fast food, crisp, biscuits', :rating => '4'},
      	  ]

restaurants.each do |rest|
  Restaurant.create!(rest)
end

restaurants = [{:name => 'Zakir', :number => '0123-1234567', :description => 'fast food, bbq', :rating => '3'},
    	  {:name => 'Flavours', :number => '0123-1234567', :description => 'pizza', :rating => '3.5'},
    	  {:name => 'Chop Chop', :number => '0123-1234567', :description => 'Chinese', :rating => '3'},
      	  {:name => 'Khokha', :number => '0123-1234567', :description => 'fast food, crisp, biscuits', :rating => '4'},
      	  ]

restaurants.each do |rest|
  Restaurant.create!(rest)
end