class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  has_attachment :photo, accept: [:jpg, :jpeg, :png, :gif]

  validates :name, uniqueness: true, presence: true
  validates :photo, presence: true

end
