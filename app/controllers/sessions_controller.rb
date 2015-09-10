class SessionsController < ApplicationController
def new
end

def menu
end

def destroy
	session[:apto_id] = nil
	redirect_to '/sessions/new'
end



def create
	f = Conjunto.where(nombre_conjunto: params[:session][:nombre_conjunto]).first
	if f == nil
		redirect_to root_path
		flash[:notice] = "La información no es correcta, intenta denuevo!"
	else
		@apto = Apto.where(["num_apto = ? and conjunto_id = ?", params[:session][:num_apto], f.id]).first
		
		if @apto && @apto.authenticate(params[:session][:password])
				session[:apto_id] = @apto.id
		  	if @apto.num_apto == "777"
					redirect_to '/sessions/menu'
				elsif @apto.num_apto == "admin"
					
					redirect_to '/conjuntos/show'
				else
					
					redirect_to '/aptos/show'
				end
		else
			flash[:notice] = "La información no es correcta, intenta denuevo!"
			redirect_to root_path
	end
end
end

def edit
	@apto = current_apto
end

def update_password
	@apto = Apto.find(current_apto.id)
	@apto.update(apto_params)
	if @apto.num_apto == "admin"
		redirect_to '/conjuntos/show'
	else
	redirect_to '/aptos/show'
	end
end	

private
def apto_params
	params.require(:apto).permit( :password, :password_confirmation)
end
end


