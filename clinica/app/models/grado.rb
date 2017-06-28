class Grado < ApplicationRecord
  has_many :usuarios
  validates :rol, presence: {:message => "Llenado Obligatorio"}
end
