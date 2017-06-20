class Insumo < ApplicationRecord
<<<<<<< HEAD
=======
  has_many :articulos
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, format:{with: /\A[a-zA-Z]+\z/,message: "Solo acepta letras"}

  validates :cantidad, presence: {:message => "Llenado Obligatorio"}
  validates :cantidad, numericality: {only_integer: true, message:"solo numero enteros"}
  validates :cantidad, numericality: {:greater_than_or_equal_to =>0, message: "no se aceptan enteros negativos"}
  validates :cantidad, length: { in: 1..2, message: "la dimension de cantidad no puede superar las 99 unidades"}


  validates :costo, presence: {:message => "Llenado Obligatorio"}
  validates :costo, numericality: {only_integer: true, message: "solo numero enteros"},length: {minimun:1, maximum:6, message: "El precio debe ser de 1 a 6 digitos"}
  validates :costo, numericality: {:greater_than_or_equal_to =>0, message: "no se aceptan enteros negativos"}

  validates :vencimiento, presence: {:message => "Llenado Obligatorio"}
  validates :ingreso, presence: {:message => "Llenado Obligatorio"}
>>>>>>> 9ba730ef51ffe683e5991cf506cf3a3b5ca5c57c

end
