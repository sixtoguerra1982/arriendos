class Arriendo < ApplicationRecord
	belongs_to :usuario
	belongs_to :serie
	belongs_to :pelicula
end
