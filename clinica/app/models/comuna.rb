class Comuna < ApplicationRecord
  validates :nombre, presence: {message => "Llenado Obligatorio"}
end
