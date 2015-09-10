class CreateAptos < ActiveRecord::Migration
    def change
    create_table :aptos do |t|
    	t.string :num_apto
    	t.string :num_residentes
    	t.string :email1
    	t.references :conjunto
      t.string :password_digest
      t.string :email2
      t.string :email_propietario
      t.string :placa_carro1
      t.string :placa_carro2
      t.string :placa_carro3
      t.string :nombre_empleada1
      t.string :cedula_empleada1
      t.string :nombre_empleada2
      t.string :cedula_empleada2
      t.timestamps null: false

    end
  end
end
