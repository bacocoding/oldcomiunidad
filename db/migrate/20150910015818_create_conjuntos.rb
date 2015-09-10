class CreateConjuntos < ActiveRecord::Migration
  def change
    create_table :conjuntos do |t|
    t.string :nombre_conjunto
    t.string :empresa_admin
    t.string :email_admin
    t.string :info
    t.string :direccion_conjunto
    t.string :tel_conjunto
    t.string :tel_admin
    t.string :direccion_admin
    t.string :nombre_administrador
    t.string :empresa_vigilancia
    t.string :empresa_servicios
    t.string :vigilante1
    t.string :cedula_vigilante1
    t.string :pic_vigilante1
    t.string :vigilante2
    t.string :cedula_vigilante2
    t.string :pic_vigilante2
    t.string :vigilante3
    t.string :cedula_vigilante3
    t.string :pic_vigilante3
    t.string :aseo1
    t.string :cedula_aseo1
    t.string :pic_aseo1
    t.string :aseo2
    t.string :cedula_aseo2
    t.string :pic_aseo2
    t.string :clasificados
      t.timestamps null: false
    end
  end
end
