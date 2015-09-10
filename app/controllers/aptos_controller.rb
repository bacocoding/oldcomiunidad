class AptosController < ApplicationController

  def show
   @apto = Apto.find(session[:apto_id])
   @servicio = Servicio.where(conjunto_id: @apto.conjunto_id).order(:categoria)
  end
  
  def new
    @apto = Apto.new
  end
  
  def index
    @conjunto = Conjunto.find(params[:id])
    @apto = Apto.where(conjunto_id: params[:id])
  end
  
  def destroy
    @apto = Apto.find(params[:id])
    @apto.destroy
    redirect_to '/sessions/menu'
  end
  
  def edit
  @apto = Apto.find(session[:apto_id])
  end
  
  def update
    @apto = Apto.find(session[:apto_id])
    @apto.update(aptoupdate_params)
     redirect_to '/aptos/show'
  end
  
  def create
    @apto = Apto.new(apto_params)
    if @apto.save
      
    redirect_to '/aptos/new' 
    else 
    redirect_to '/signup' 
    end 
  end
  
  private
  def apto_params
    params.require(:apto).permit(:num_apto, :conjunto_id, :password)
  end
  
  def aptoupdate_params
    params.require(:apto).permit(:num_residentes, :email1, :email2, :email_propietario, :placa_carro1, :placa_carro2, :placa_carro3, :nombre_empleada1, :cedula_empleada1, :nombre_empleada2, :cedula_empleada2)
  end
  
end
