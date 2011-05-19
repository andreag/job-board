# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include AuthenticatedSystem
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
 
  protected

  # Simple filter check to make sure we are an employer account
  def is_employer_account
    # Make sure we have an account type that allows
    # posting of jobs (admin/employer)
    unless current_user.account_type == "employer"
      flash[:error] = "You must have an Employer account for this action"
      redirect_to :controller => 'pages', :action => 'need_employer_account'
    end
  end
  
  # Simple filter check to make sure we are a job seeker account
  def is_seeker_account
    # Make sure we have an account type that allows
    # posting of jobs (admin/employer)
    unless current_user.account_type == "seeker"
      flash[:error] = "You must have a Job Seeker account for this action"
      redirect_to :controller => 'pages', :action => 'need_seeker_account'
    end
  end

end
