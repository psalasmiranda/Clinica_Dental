class Grado < ApplicationRecord
  has_many :usuarios, dependent: :restrict_with_exception
  validates :rol, presence: {:message => "Llenado Obligatorio"}
  validates :rol, length: {minimum: 3, maximum: 25, :message => "El nombre debe tener entre 3 y 25 caracteres"}

end
