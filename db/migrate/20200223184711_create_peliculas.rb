class CreatePeliculas < ActiveRecord::Migration[5.2]
  def change
    create_table :peliculas do |t|
      t.string :titulo
      t.string :genero
      t.integer :precio_arriendo
      t.integer :duracion

      t.timestamps
    end
  end
end
