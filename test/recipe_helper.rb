require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class RecipeTest < ActiveSupport::TestCase
	
	def setup
		@recipe=Recipe.new(name: "noodles" , summary: "best noodles ever" , description: "boil water, add noodles, add veggies, add chicken, cook for 10 minutes" )
	end

	test "recipe should be valid" do
		assert @recipe.valid? 
	end
	
	test "name should be present" do
		@recipe.name = " "
		assert_not @recipe.valid?
	end
	
	test "name length should not be too long" do
		@recipe.name= "a" * 99
		assert_not @recipe.valid?
	end

	test "name length should not be too short" do
		@recipe.name= "aaaa"
		assert_not @recipe.valid?
	end

	test "summary should be present" do
		@recipe.summary=" "
		assert_not @recipe.valid?
	end
	
	test "summary length should not be too long" do
		@recipe.summary= "a" * 149
		assert_not @recipe.valid?
	end
	
	test "summary should not be too short" do
		@recipe.summary= "a" * 29
		assert_not @recipe.valid?
	end
	
	test "description should be present" do
		@recipe.description=""
		assert_not @recipe.valid?
	end
	
	test "description should not be too long" do
		@recipe.description= "a" * 299
		assert_not @recipe.valid?
	end
	
	test "description should not be too short" do
		@recipe.description="a" * 49
		assert_not @recipe.valid?
	end
	
end
