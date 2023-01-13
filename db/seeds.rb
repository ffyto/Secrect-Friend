# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
locations = Location.create([{name: 'Tecnología'}, {name: 'Finanzas'}])
Worker.create([
  { name: "Mauricio Arango", location_id: locations.first.id },
  { name: "Ana Baena", location_id: locations.first.id },
  { name: "Francisco Lopera", location_id: locations.first.id },
  { name: "Sara Arango", location_id: locations.first.id },
  { name: "Celeste Ochoa", location_id: locations.first.id }
  ])

