# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Empleado.destroy_all

Empleado.create!([
    {
      id: 1, num_empleado: 332618, nom_empleado: "Hector Fuentes", ip: "192.161.59.12",   
      mac_address: "E1:F1:G1:A1:E1:Y8", departamento: "SISTEMAS"
    },
     {
      id: 2, num_empleado: 125569, nom_empleado: "Ricardo Armenta", ip: "192.161.59.80",   
      mac_address: "G1:A1:E1:V1:E4:N8", departamento: "RECURSOS HUMANOS"
    },
     {
      id: 3, num_empleado: 256898, nom_empleado: "Vlad Tepez", ip: "192.161.59.29", 
      mac_address: "R1:T1:W1:A3:E6:M8", departamento: "ENFERMERIA"
    }
  ])
p "Creados #{Empleado.count} empleados."