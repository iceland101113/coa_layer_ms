class LayersController < ApplicationController

  def index
    @layers = Layer.all
  end

end
