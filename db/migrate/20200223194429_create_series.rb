class CreateSeries < ActiveRecord::Migration[5.2]
  def change
    create_table :series do |t|
      t.string :titulo
      t.string :genero
      t.integer :precio_arriendo
      t.string :temporadas

      t.timestamps
    end
  end
end
