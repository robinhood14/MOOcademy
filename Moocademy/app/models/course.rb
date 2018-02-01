class Course < ApplicationRecord
	has_many :lessons, dependent: :destroy #chaque cours peut avoir plusieurs leçons. Si on supprime un cours (le parent), on supprime aussi toutes les leçons.
	validates :title,  presence: true, length: { maximum: 80 } #condition de validité : le titre doit être présent et faire moins de 80 caractères.
	validates :description, presence: true, length: { maximum: 500 }# condition de validité : la description doit être présente et faire 500 caractères max.
end
 
