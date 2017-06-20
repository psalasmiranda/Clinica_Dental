class Grado < ApplicationRecord
  belongs_to :usuario, foreign_key: :usuario_id
  validates :grado, presence: {:message => "Llenado Obligatorio"}
  validates :grado, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
end
