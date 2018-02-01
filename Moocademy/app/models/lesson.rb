class Lesson < ApplicationRecord
  belongs_to :course #les leçons dépendent du'un cours
  validates :title,  presence: true, length: { maximum: 80 } #le  titre ne doit pas être vide et faire au max 80 char
  validates :body, presence: true
end
