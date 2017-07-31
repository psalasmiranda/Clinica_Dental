class Insumo < ApplicationRecord
  has_many :gastados
  belongs_to :agente, foreign_key: :agente_id
  validates :nombre, presence: {:message => "Llenado Obligatorio"}
  validates :nombre, length: {minimum: 3, maximum: 20, :message => "El nombre debe tener entre 3 y 20 caracteres"}

  validates :cantidad, presence: {:message => "Llenado Obligatorio"}
  validates :cantidad, numericality: {only_integer: true, message:"Solo numero entero"}
  validates :cantidad, numericality: {:greater_than_or_equal_to =>0, message: "No se aceptan valores negativos"}
  validates :cantidad, length: { in: 1..3, message: "La dimension de cantidad no puede superar las 999 unidades"}

  validates :costo, presence: {:message => "Llenado Obligatorio"}
  validates :costo, numericality: {only_integer: true, message: "Solo numero enteros"},length: {minimun:1, maximum:8, message: "El precio debe ser de 1 a 8 digitos"}
  validates :costo, numericality: {:greater_than_or_equal_to =>0, message: "No se aceptan valores negativos"}
  validate :Validate_Vencimiento

  def self.search(search)
  # Title is for the above case, the OP incorrectly had 'name'
  where("nombre LIKE ?", "%#{search}%")
end


  def Validate_Vencimiento
    if self.ingreso > self.vencimiento
      errors.add(:vencimiento,"La fecha de vencimiento no puede ser menor que la fecha de ingreso")
      return false
    end

  end


end
