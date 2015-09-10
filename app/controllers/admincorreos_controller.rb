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
	email = @apto.email1
	apto = 'Mensaje de la administración de ' + @apto.conjunto.nombre_conjunto
	ExampleMailer.sample_email(mensaje, email, apto).deliver
	redirect_to '/conjuntos/show'
end

end
