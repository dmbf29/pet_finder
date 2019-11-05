class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.boolean :dead, default: false
      t.string :location
      t.string :color

      t.timestamps
    end
  end
end
