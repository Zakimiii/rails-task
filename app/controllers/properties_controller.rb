class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
 
  def index
    @properties = Property.all
  end

  def new 
    @property = Property.new(property_params)
  end 

  def create
   @property = Property.new(property_params)
   if @porperty.save
    redirect_to new_property_path
   else 
    render 'new'
   end
  end

  def edit
  end

  def show
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path
    else
      render 'edit'
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path
  end

  private
    def property_params
      unless @params.nil?
      params.require(:property).permit(:name, :price, :address, :year_built, :note)
      end
    end
    def set_property
      @property = Property.find(params[:id])
    end
end
