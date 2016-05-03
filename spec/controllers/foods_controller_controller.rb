require 'rails_helper'
require 'spec_helper'

describe FoodsController do

	before :each do
		@fake_hotel = stub('double').as_null_object
		@hotel = [double('hotel1')]
		@fake_user = stub('double').as_null_object
		@user = [double('user1')]
	end

	describe 'displaying a list of hotels' do
		before :each do
			@food_id = 10
			@founded = [double('a food'), double('another one')]
			@fake_food.stub(:hotel).and_return('fake hotel')
		end
		it 'should render same_hotel view' do
			food.stub(:find).and_return(@fake_food)
			food.stub(:find_all_by_hotel).and_return(@founded)

			get :same_hotel, {:id => @food_id}
		end
		it 'should call Model method to get foods of a hotel' do
			food.should_receive(:find).with(@food_id.to_s).and_return(@fake_food)
			food.should_receive(:find_all_by_hotel).and_return(@founded)

			get :same_hotel, {:id => @food_id}
		end
		it 'should make founded foods available to the view' do
			food.stub(:find).and_return(@fake_food)
			food.stub(:find_all_by_hotel).and_return(@founded)

			get :same_hotel, {:id => @food_id}

			assigns(:foods).should == @founded
		end
		it 'should return to signin page, if no user founded' do
			empty_hotel =  double('food', :hotel => '').as_null_object
			food.stub(:find).and_return(empty_hotel)
			food.stub(:find_all_by_hotel)
			
			get :same_hotel, {:id => @food_id}
			response.should redirect_to(foods_path)						
		end
	end

	describe 'create a new review' do
		it 'should render the new-food template' do
			get :new
			response.should render_template 'new'
		end
	end

	describe 'delete an existing review' do
		it 'should render edit food template' do
			food.stub(:find)
			get :edit, {:id => 5}
			response.should render_template 'edit'
		end
		it 'should render show details template' do

		end
	end

	describe 'signup as a new user' do
		it 'should render signup template' do
			user.stub(:find)
			get :edit, {:id => 5}
			response.should render_template 'new'
		end
		it 'should render new details template' do

		end
	end

	describe 'ordering selected food and placing fina order' do
		it 'should render hotel template' do
			hotel.stub(:find)
			get :edit, {:id => 5}
			response.should render_template 'new'
		end
		it 'should render new details template' do

		end
		it 'should render same_hotel view' do
			food.stub(:find).and_return(@fake_food)
			food.stub(:find_all_by_hotel).and_return(@founded)

			get :same_hotel, {:id => @food_id}
		end
		it 'should call Model method to get foods of a hotel' do
			food.should_receive(:find).with(@food_id.to_s).and_return(@fake_food)
			food.should_receive(:find_all_by_hotel).and_return(@founded)

			get :same_hotel, {:id => @food_id}
		end
		it 'should make founded foods available to the view' do
			food.stub(:find).and_return(@fake_food)
			food.stub(:find_all_by_hotel).and_return(@founded)

			get :same_hotel, {:id => @food_id}

			assigns(:foods).should == @founded
		end
		it 'should return to hotels page, if no food ordered' do
			empty_hotel =  double('food', :hotel => '').as_null_object
			food.stub(:find).and_return(empty_hotel)
			food.stub(:find_all_by_hotel)
			
			get :same_hotel, {:id => @food_id}
			response.should redirect_to(foods_path)						
		end
	end
end
