# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Grado.create(:rol => "Administradores")
Usuario.create(:alias => "root",:nombre=>"q", :ape_paterno =>"q", :ape_materno=>"q", :rut=>"99999999-9",:telefono=>"56954443267",:correo=>"q",:cargo=>"q", :password =>"123456" , :grado_id => 1)
Comuna.create(:nombre => "Quinta normal")
Hora.create(:bloque => "09:00 - 09:30")
Hora.create(:bloque => "09:30 - 10:00")
Hora.create(:bloque => "10:00 - 10:30")
Hora.create(:bloque => "10:30 - 11:00")
Hora.create(:bloque => "11:00 - 11:30")
Hora.create(:bloque => "11:30 - 12:00")
Hora.create(:bloque => "12:00 - 12:30")
Hora.create(:bloque => "12:30 - 13:00")
Hora.create(:bloque => "13:00 - 13:30")
Hora.create(:bloque => "13:30 - 14:00")
Hora.create(:bloque => "14:00 - 14:30")
Hora.create(:bloque => "14:30 - 15:00")
Hora.create(:bloque => "15:00 - 15:30")
Hora.create(:bloque => "15:30 - 16:00")
Hora.create(:bloque => "16:00 - 16:30")
Hora.create(:bloque => "16:30 - 17:00")
Tratamiento.create(:nombre => "Consulta", :descripcion => "Solo Consulta", :costo => 8000)
