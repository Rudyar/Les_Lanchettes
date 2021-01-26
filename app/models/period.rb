class Period < ApplicationRecord
  validates :title,
            uniqueness { message: "Titre de période déjà utilisé"},
            length: { minimum: 4, message: "Le titre doit au moins faire 4 caractères !" }
  
  has_many :availabilities, dependent: :destroy

  
end
