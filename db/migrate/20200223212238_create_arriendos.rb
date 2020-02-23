class CreateArriendos < ActiveRecord::Migration[5.2]
  def change
    create_table :arriendos do |t|
      t.references :serie, foreign_key: true , optional: true
      t.references :pelicula, foreign_key: true , optional: true
      t.references :usuario, foreign_key: true 

      t.timestamps
    end
  end
end
