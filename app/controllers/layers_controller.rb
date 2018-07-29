class LayersController < ApplicationController
  before_action :set_layer, only: [:edit, :update, :destroy]

  def index
    @layers = Layer.includes(:category).all
  end

  def new
    @layer = Layer.new
  end

  def create
    @layer = Layer.new(layer_params)
    if @layer.save
      flash[:notice] = "layer was successfully created"
      redirect_to root_path
    else
      flash.now[:alert] = "layer was failed to create"
      render :new
    end
  end

  def edit
  end

  def update
    if @layer.update(layer_params)
      redirect_to root_path
      flash[:notice] = "layer was successfully updated"
    else
      render :edit
      flash[:alert] = "layer was failed to update"
    end
  end

  def destroy
    @layer.destroy
    redirect_to root_path
    flash[:alert] = "layer was deleted"
  end


  private

  def layer_params
    params.require(:layer).permit(:title, :category_id, :year, :owner, :format, :position, :cadastralize, :description)
  end

  def set_layer
    @layer = Layer.find(params[:id])
  end

end
