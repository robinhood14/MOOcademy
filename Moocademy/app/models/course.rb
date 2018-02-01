class Course < ApplicationRecord
	has_many :lessons, dependent: :destroy #chaque cours peut avoir plusieurs leçons. Si on supprime un cours (le parent), on supprime aussi toutes les leçons.
	validates :title,  presence: true, length: { maximum: 80 } #titre doit être rempli et faire moins de 80 char
	validates :description, presence: true, length: { maximum: 500 }
end
