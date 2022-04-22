class CreateBeerRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :beer_recipes do |t|
      t.string :name
      t.integer :mashin_temp
      t.integer :mashin_water_vol
      t.string :sparging_temp_range
      t.integer :sparging_target_OG
      t.integer :sparging_target_PH
      t.integer :boil_duration
      t.integer :after_boil_target_OG
      t.integer :after_boil_target_PH
      t.integer :expected_after_boil_vol

      t.timestamps
    end
  end
end
