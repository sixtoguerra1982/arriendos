class Usuario < ApplicationRecord
	has_many :arriendos
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
end
