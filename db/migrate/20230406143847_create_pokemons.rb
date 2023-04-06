class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :photo
      t.string :move_name_0
      t.string :move_name_1
      t.string :move_name_2
      t.string :type_name

      t.timestamps
    end
  end
end
