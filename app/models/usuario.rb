class Usuario < ApplicationRecord
	has_many :arriendos, dependent: :destroy
	validates :name, presence: true
	validates :email, presence: true, uniqueness: true
end
