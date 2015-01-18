class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :cooking_time
      t.string :difficulty_level
      t.references :food_type, index: true
      t.references :food_preference, index: true
      t.references :cuisine, index: true
      t.text :ingredients
      t.text :procedure

      t.timestamps null: false
    end
    add_foreign_key :recipes, :food_types
    add_foreign_key :recipes, :food_preferences
    add_foreign_key :recipes, :cuisines
  end
end
