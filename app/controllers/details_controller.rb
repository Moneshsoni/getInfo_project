class DetailsController < ApplicationController
  
  def index
    @details = Detail.all
  end

  def new
    @detail = Detail.new
  end

  def create
    @detail = Detail.new(detail_params)
    if @detail.save
      redirect_to details_path
    else
      render new
    end
  end

  def show
    @detail = Detail.find(params[:id])
  end

  def edit
    @detail = Detail.find(params[:id])
  end

  def update
    binding.pry
    @detail = Detail.find(params[:id])
    if @detail.update(detail_params)
      redirect_to details_path, notice: "Detail is succefully updated"
    else
      render :edit
    end
  end

  def destroy
    binding.pry
    @detail = Detail.find(params[:id])
    @detail.destroy
    redirect_to root_path
  end
  private

  def detail_params
    params.require(:detail).permit(:title,:description, :refference)
  end

end
