class Grado < ApplicationRecord
  validates :rol, presence: {:message => "Llenado Obligatorio"}
end
