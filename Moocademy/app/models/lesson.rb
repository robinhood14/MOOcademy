class Lesson < ApplicationRecord
  belongs_to :course #les leçons appartiennent(dépendent) d'un cours
  validates :title,  presence: true, length: { maximum: 80 } #condition de validité : le  titre doit être présent et faire au max 80 caractères
  validates :body, presence: true # condition de validité : le body doit être présent
end
