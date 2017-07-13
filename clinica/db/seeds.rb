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
