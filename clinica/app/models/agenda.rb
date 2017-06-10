class Agenda < ApplicationRecord
  validates :hora, presence: {:message => "Llenado Obligatorio"}
  validates :costo, presence: {:message => "Llenado Obligatorio"}
end
