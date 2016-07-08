class AdmincorreosController < ApplicationController

def new
	@apto = Apto.find(params[:id])
end

def create
	@apto = Apto.find(params[:apto_id])
	send_email(params[:correo][:mensaje])

end

private
def send_email(mensaje)
	if @apto.num_apto == "admin"
	@listadoaptos = Apto.where(conjunto_id: @apto.conjunto_id)
	@listadoaptos.each do|x|
	email = x.email1
	apto = 'Mensaje de la administración de ' + @apto.conjunto.nombre_conjunto
	ExampleMailer.sample_email(mensaje, email, apto, params[:correo][:anexo]).deliver
	end
	redirect_to '/conjuntos/show'	
	else
	email = @apto.email1
	apto = 'Mensaje de la administración de ' + @apto.conjunto.nombre_conjunto
	ExampleMailer.sample_email(mensaje, email, apto, params[:correo][:anexo]).deliver
	redirect_to '/conjuntos/show'
	end
end

end
