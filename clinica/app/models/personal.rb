class Personal < ApplicationRecord
  has_many :agendas
  validates :nombres, presence: {:message => "INGRESE NOMBRES"}
  validates :rut, presence: {:message => "INGRESE RUT"}
  validates :correo, presence: {:message => "INGRESE CORREO"}
  validates :telefono, presence: {:message => "INGRESE TELEFONO"}
  validates :profesion, presence: {:message => "INGRESE PROFESION O CARGO"}
end
