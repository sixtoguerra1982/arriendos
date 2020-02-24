class Arriendo < ApplicationRecord
	belongs_to :usuario
	belongs_to :serie, optional: true
	belongs_to :pelicula, optional: true
end
