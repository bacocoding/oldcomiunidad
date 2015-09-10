class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre_contratista
      t.string :cedula_contratista
      t.string :imagen_contratista
      t.string :categoria
      t.references :conjunto
      t.timestamps null: false
    end
  end
end
