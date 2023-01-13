# == Schema Information
#
# Table name: workers
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  location_id :integer          not null
#
# Indexes
#
#  index_workers_on_location_id  (location_id)
#
# Foreign Keys
#
#  location_id  (location_id => locations.id)
#
class Worker < ApplicationRecord
  belongs_to :location
  validates :name, length: {
    minimum: 3,
    too_short: "El nombre debe tener una longitud mínima de 3 caracteres"
  },
  format: { with: /\A([A-Za-zñáéíóú]+[\s]*)+\z/, message: "El nombre solo puede contener letras." }
  validates :location, presence: {
    message: 'Debe ingresarse el id de un departamento para el trabajador.'
  }
end
