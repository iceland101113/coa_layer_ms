class CategoriesController < ApplicationController

  before_action :set_category

  def index
    @categories = Category.page(params[:page]).per(10)

  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = "category was successfully created"
      redirect_to categories_path

    else
      @categories = Category.all
      render :index
    end
  end

  def update
    if @category.update(category_params)
      redirect_to categories_path
      flash[:notice] = "category was sucessfully updated"
    else
      @categories = Category.all
      render :index
    end
  end

  def destroy
    @category.destroy
    flash[:alert] = "category was successfully deleted"
    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def set_category
    if  params[:id]
      @category = Category.find(params[:id])
    else
      @category = Category.new
    end
  end


end
