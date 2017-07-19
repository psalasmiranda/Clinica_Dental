class Insumo < ApplicationRecord

  belongs_to :agente, foreign_key: :agente_id
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, length: {minimum: 3, maximum: 20, :message => "El nombre debe tener entre 3 y 20 caracteres"}

  validates :cantidad, presence: {:message => "Llenado Obligatorio"}
  validates :cantidad, numericality: {only_integer: true, message:"Solo numero enteros"}
  validates :cantidad, numericality: {:greater_than_or_equal_to =>0, message: "No se aceptan enteros negativos"}
  validates :cantidad, length: { in: 1..2, message: "La dimension de cantidad no puede superar las 99 unidades"}

  validates :costo, presence: {:message => "Llenado Obligatorio"}
  validates :costo, numericality: {only_integer: true, message: "Solo numero enteros"},length: {minimun:1, maximum:6, message: "El precio debe ser de 1 a 6 digitos"}
  validates :costo, numericality: {:greater_than_or_equal_to =>0, message: "No se aceptan enteros negativos"}
  validate :Validate_Vencimiento

  def Validate_Vencimiento
    if self.ingreso > self.vencimiento
      errors.add(:vencimiento,"La fecha de vencimiento no puede ser menor que la fecha de ingreso")
      return false
    end

  end


end
