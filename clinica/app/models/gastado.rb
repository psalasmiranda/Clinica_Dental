class Gastado < ApplicationRecord
  belongs_to :agenda, foreign_key: :agenda_id
  belongs_to :insumo, foreign_key: :insumo_id
  #after_create :cantidad_mayor

  validates :cantidad, presence: {:message => "Llenado Obligatorio"}
  validates :cantidad, numericality: {only_integer: true, message: "Solo numeros"}
  validate :cantidad_validacion
  validate :cantidad_mayor

  def cantidad_validacion
    if self.cantidad.present?
      if self.cantidad < 0 || self.cantidad == 0
        errors.add(:cantidad, "Error, la cantidad debe ser mayor a 0")
      end
    end
  end

  def cantidad_mayor
    if self.cantidad > Insumo.find(self.insumo_id).cantidad
      errors.add(:cantidad, "Error, la cantidad no debe ser mayor que el stock")
    end
  end

end
