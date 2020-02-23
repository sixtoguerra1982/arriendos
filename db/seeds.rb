# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


peliculas = [
  { titulo: 'Pelicula Uno', genero: 'accion', precio_arriendo: '1300', duracion:'180' },
  { titulo: 'Pelicula Dos', genero: 'accion', precio_arriendo: '1500', duracion:'160' },
  { titulo: 'Pelicula Tres', genero: 'accion', precio_arriendo: '1700', duracion:'140' },
]
peliculas.each do |p|
  pelicula = Pelicula.find_or_initialize_by(titulo: p[:titulo])
  pelicula.attributes = p
  pelicula.save
end

series = [
  { titulo: 'Serie Uno', genero: 'accion', precio_arriendo: '1900', temporadas:'2' },
  { titulo: 'Serie Dos', genero: 'accion', precio_arriendo: '1800', temporadas:'4' },
  { titulo: 'Serie Tres', genero: 'accion', precio_arriendo: '1600', temporadas:'6' },
]
series.each do |s|
  serie = Serie.find_or_initialize_by(titulo: s[:titulo])
  serie.attributes = s
  serie.save
end