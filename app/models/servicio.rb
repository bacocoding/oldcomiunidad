class Servicio < ActiveRecord::Base
belongs_to :conjunto
mount_uploader :imagen_contratista, ImagenContratistaUploader # Tells rails to use this uploader for this model.
end
