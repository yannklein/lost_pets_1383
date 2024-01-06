class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.string :gender
      t.string :color
      t.string :location
      t.date :found_on

      t.timestamps
    end
  end
end
