class Material < ApplicationRecord
  has_many :insumos
  has_many :tratamientos
end
