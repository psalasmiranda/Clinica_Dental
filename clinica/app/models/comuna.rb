class Comuna < ApplicationRecord
  has_many :pacientes
  validates :nombre, presence: {message => "Llenado Obligatorio"}
end
