class Arriendo < ApplicationRecord
	belongs_to :usuario
	belongs_to :serie, optional: true
	belongs_to :pelicula, optional: true
	

	validate :tipo

  	def tipo
	    if self.serie_id.blank? && self.pelicula_id.blank?
	     self.errors.add(:tipo, ' Seleccionar Película o Serie')
	    end
  	end

  	def actualizado?
  		if self.created_at == self.updated_at
  			false
  		else
  			true
  		end
  	end

end
