# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
food_types = ["Curry", "Dessert", "Sides", "Breakfast"]
food_types.each{ |d| Food_Type.where(name: d).first_or_create }