class NewslettersController < ApplicationController
    def index
      @newsletter = Newsletter.new
    end
  
    def create
      @newsletter = Newsletter.new(newsletter_params)
      if @newsletter.save
        cookies[:save_lead] = true
        flash[:success] = "Saved Successfully"
        redirect_to root_path      
      else
        flash[:danger] = "Failed to save"
        redirect_to root_path
      end
    end
  
    private
  
      def newsletter_params
        params.permit(:name, :email)
      end
end
