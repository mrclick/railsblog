class AfrisubscribersController < ApplicationController
  def index
    @afrisubscriber = Afrisubscriber.new
  end

  def create
    @afrisubscriber = Afrisubscriber.new(afrisubscriber_params)
    if @afrisubscriber.save
      cookies[:save_lead] = true
      flash[:success] = "Saved Successfully"
      redirect_to root_path      
    else
      flash[:danger] = "Failed to save"
      redirect_to root_path
    end
  end

  private

    def afrisubscriber_params
      params.require(:afrisubscriber).permit(:name, :email, :source)
    end
end
