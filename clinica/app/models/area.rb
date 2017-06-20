class Area < ApplicationRecord
  has_many :listados
  has_many :agendas
  validates :especialidad, presence: {:message => "Llenado Obligatorio"}
  validates :especialidad, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
end
