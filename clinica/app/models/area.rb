class Area < ApplicationRecord
  has_many :listados
  has_many :agendas
  validates :especialidad, presence: {:message => "Llenado Obligatorio"}
  validates :especialidad, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}
  validates :especialidad, length: {minimum: 3, maximum: 20, :message => "La especialidad debe tener entre 3 y 20 caracteres"}

end
