class ApplicationController < ActionController::Base
    
  before_action :authenticate_user!

  def authorize_admin!
    unless current_user.admin?
        redirect_to root_path, notice: "You don't have clearance to access this section"
    end
  end

end
