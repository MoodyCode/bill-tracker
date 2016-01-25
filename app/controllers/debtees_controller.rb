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
    @debtee = Debtee.new(:debtee_params)
    if debtee.save
      flash[:success] = 'Debtee was save succesfully'
      render :index
    else
      flash[:error] = 'Debtee was not saved successfully'
      render :new
    end
  end
end
