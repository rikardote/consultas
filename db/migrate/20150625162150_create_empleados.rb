class CreateEmpleados < ActiveRecord::Migration
  def change
    create_table :empleados do |t|
      t.string :nom_empleado
      t.integer :num_empleado
      t.string :ip
      t.string :mac_address
      t.string :departamento

      t.timestamps null: false
    end
  end
end
