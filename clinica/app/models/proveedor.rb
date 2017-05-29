class Proveedor < ApplicationRecord
   has_many :listados
  validates :nomre, presence: {:message => "INGRESE NOMBRE"}
  validates :rut, presence: {:message => "INGRESE RUT"}
  validates :correo, presence: {:message => "INGRESE CORREO"}
  validates :telefono, presence: {:message => "INGRESE TELEFONO"}

end
