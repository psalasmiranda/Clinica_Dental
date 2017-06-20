class Area < ApplicationRecord
  has_many :listados
  has_many :agendas
  validates :especialidad, presence: {:message => "Llenado Obligatorio"}
end
