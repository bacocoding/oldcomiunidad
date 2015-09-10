class ConjuntosController < ApplicationController

 def new
  @conjunto = Conjunto.new
 end
 
 def index
  @conjunto = Conjunto.all
 end

 def show
  @apto = Apto.find(session[:apto_id])
  @conjunto = Conjunto.find(@apto.conjunto_id)
  @servicio = Servicio.where(conjunto_id: @apto.conjunto_id).order(:categoria)
  @interior = Apto.where(conjunto_id: @apto.conjunto_id).where.not(num_apto: "admin").order(:num_apto)
 end
 
 def destroy
    @conjuntos = Conjunto.find(params[:id])
    @conjuntos.destroy
    redirect_to '/sessions/menu'
 end

 def edit
    @apto = Apto.find(session[:apto_id])
    @conjunto = Conjunto.find(@apto.conjunto_id)
 end
 
 def update
    @apto = Apto.find(session[:apto_id])
    @conjunto = Conjunto.find(@apto.conjunto_id)
    @conjunto.update(conjuntoupdate_params)
     redirect_to '/conjuntos/show'
  end

 def create
    @conjunto = Conjunto.new(conjunto_params)
    @conjunto.save
    redirect_to '/aptos/new'
 end
 
  private
  def conjunto_params
    params.require(:conjunto).permit(:nombre_conjunto, :empresa_admin)
  end
  
  def conjuntoupdate_params
   params.require(:conjunto).permit(:info, :nombre_administrador, :email_admin, :tel_admin, :direccion_admin, :direccion_conjunto, :tel_conjunto, :empresa_vigilancia, :empresa_servicios)
  end

end
