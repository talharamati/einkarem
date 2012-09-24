class ManagmentController < ApplicationController
  def index
    @management = true
    @departments = RefDepartment.all
    @hospitals = RefHospital.all
    @newHospital = RefHospital.new
    @newDepartment = RefDepartment.new
  end

  #def create
  #  @obj = (params.respond_to? :ref_department) ?
  #      RefDepartment.new(params[:ref_department]) :
  #      RefHospital.new(params[:ref_hospital])
  #
  #  if @obj.save
  #    redirect_to managment_index_path
  #  else
  #    flash.now.alert = "Invalid name"
  #    render "index"
  #    #redirect_to action: 'index', notice: 'illegal name'
  #  end
  #end

  def createHospital
    @newHospital = RefHospital.new(params[:ref_hospital])
    if @newHospital.save
      redirect_to managment_index_path
    else
      #flash.now.alert = "Invalid name"
      redirect_to action: 'index'#, notice: 'illegal name'
    end
  end

  def createDepartment
    @newDepartment = RefDepartment.new(params[:ref_department])
    if @newDepartment.save
      redirect_to managment_index_path
    else
      #flash.now.alert = "Invalid name"
      redirect_to action: 'index'
    end
  end

  def update
      @obj = (params[:obj] == 'department') ?
          RefDepartment.find(params[:id]) :
          RefHospital.find(params[:id])

      if @obj.update_attributes(params["ref_#{params[:obj]}"])
        respond_with_bip(@obj)
      else
        respond_with_bip(@obj)
      end
end

  def destroy
  end
end
