class CorreosController < ApplicationController

def new
end

def create
	send_email(params[:correo][:mensaje])
end

private
def send_email(mensaje)
	@apto = Apto.find(session[:apto_id])
	email = @apto.conjunto.email_admin
	apto = 'Mensaje del interior: ' + @apto.num_apto
	ExampleMailer.sample_email(mensaje, email, apto).deliver_now
	redirect_to '/aptos/show'
end

end
