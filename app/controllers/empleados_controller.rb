class EmpleadosController < ApplicationController
  autocomplete :empleado, :num_empleado

  before_action :set_empleado, only: [:show, :edit, :update, :destroy]
  def index
     #@empleados = Empleado.all.order('ip ASC')
    if params[:search]
      @empleados = Empleado.search(params[:search]).order("created_at DESC")
    else
      @empleados = Empleado.all.order('created_at DESC')
    end
  end

  def show
    
  end

  def new
    @empleado = Empleado.new
  end

  def create
    @empleado = Empleado.create(empleado_params)

    respond_to do |format|
     if @empleado.save
        format.json { head :no_content}
        format.js
      else
        format.json { render json: @empleado.errors.full_messages,
                             status: :unprocessable_entity }
      end
    end
  end

  def edit
    
  end

  def update
    respond_to do |format|
      if @empleado.update(empleado_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @empleado.errors.full_messages,
                             status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @empleado.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end

  private
  def set_empleado
    @empleado = Empleado.find(params[:id])
  end

  def empleado_params
    params.require(:empleado).permit(:num_empleado, :nom_empleado,
                                    :ip, :mac_address, :departamento)
  end

end
