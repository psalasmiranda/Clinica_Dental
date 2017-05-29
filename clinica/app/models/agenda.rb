class Agenda < ApplicationRecord
  validates :fecha, presence: {:message => "INGRESE FECHA"}
  validates :hora, presence: {:message => "INGRESE HORA"}
  validates :estado, presence: {:message => "INGRESE ESTADO"}
  validates :descripcion, presence: {:message => "INGRESE DESCRIPCION"}
end
