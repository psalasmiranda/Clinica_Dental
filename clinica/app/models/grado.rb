class Grado < ApplicationRecord
  has_many :personals
  validates :rol, presence: {:message => "Llenado Obligatorio"}
end
