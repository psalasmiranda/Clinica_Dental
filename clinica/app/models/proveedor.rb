class Proveedor < ApplicationRecord
   has_many :listados
  VALIDATES :nomre, PRESENCE: {:MESSAGE => "INGRESE NOMBRE"}
  VALIDATES :rut, PRESENCE: {:MESSAGE => "INGRESE RUT"}
  VALIDATES :correo, PRESENCE: {:MESSAGE => "INGRESE CORREO"}
  VALIDATES :telefono, PRESENCE: {:MESSAGE => "INGRESE TELEFONO"}

end
