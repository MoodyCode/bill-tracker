class DebteesController < ApplicationController
  def index
    @debtees = Debtee.all
  end

  def show
    @debtee = Debtee.find(params[:id])
  end

  def new
    @debtee = Debtee.new
  end

  def create
    @debtee = Debtee.new(debtee_params)
    if @debtee.save
      flash[:success] = 'Debtee was save succesfully'
      redirect_to debtees_path
    else
      flash[:error] = 'Debtee was not saved successfully'
      render :new
    end
  end

  private

  def debtee_params
    params.require(:debtee).permit(:debtee, :website, :username, :password)
  end
end
