class ServiciosController < ApplicationController

 def new
   @servicio = Servicio.new
 end
 
 def show
   @apto = Apto.find(session[:apto_id])
  @conjunto = Conjunto.find(@apto.conjunto_id)
  @servicio = Servicio.where(conjunto_id: @apto.conjunto_id).order(:categoria)
 end
 
 def edit
    @servicio = Servicio.find(params[:id])
 end
 
 def destroy
    @servicio = Servicio.find(params[:id])
    @servicio.destroy
    redirect_to '/conjuntos/show'
 end
 
 def update
    @servicio = Servicio.find(params[:id])
    @servicio.update(updateservicio_params)
     redirect_to '/conjuntos/show'
  end
 
 
 def create
   @servicio = Servicio.new(servicio_params)
   @servicio.save
   @apto = Apto.find(session[:apto_id])
   @conjunto = Conjunto.find(@apto.conjunto_id)
   @servicio.conjunto_id = @conjunto.id
   @servicio.save
   redirect_to '/conjuntos/show'
 end
 
 private
 def servicio_params
   params.require(:servicio).permit(:nombre_contratista, :cedula_contratista, :imagen_contratista, :categoria)
 end
 
 def updateservicio_params
   params.require(:servicio).permit(:nombre_contratista, :cedula_contratista, :imagen_contratista, :categoria)
 end

end

