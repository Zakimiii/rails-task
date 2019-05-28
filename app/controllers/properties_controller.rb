class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]
 
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    #@property = Property.trains.build
    2.times { @property.stations.build }
  end

  def create
    @property = Property.new(property_params)
   

    if @property.save
      redirect_to new_property_path(@property)
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

      params.require(:property).permit(:name, :price, :address, :year_built, :note,
      stations_attributes: [:train, :station_name, :distance, :property_id])
    end

    def set_property
      @property = Property.find(params[:id])
    end
end
