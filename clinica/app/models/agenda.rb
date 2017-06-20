class Agenda < ApplicationRecord
  validates :hora, presence: {message => "LLenado Obligatorio"}
  validates :costo, presence: {message => "LLenado Obligatorio"}
end
