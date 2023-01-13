# == Schema Information
#
# Table name: locations
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Location < ApplicationRecord
  has_many :workers
  validates :name, uniqueness: {
    message: "El nombre del departamento ya ha sido usado"
    },
    length: {
    minimum: 3,
    too_short: "El nombre debe tener una longitud mínima de 3 caracteres"
    },
    format: { with: /\A([A-Za-zñáéíóú0-9]+[\s]*)+\z/, message: "El nombre solo puede contener letras y números." }
end
