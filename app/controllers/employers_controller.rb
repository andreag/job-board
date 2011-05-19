class EmployersController < ApplicationController

  before_filter :login_required, :except => :public

  def index
    @title = "Welcome Employer"
    @employer = Employer.find_by_user_id(current_user.id) 
    @logo = Logo.find_by_employer_id(@employer.id)
    @jobs = Job.paginate :conditions => ["employer_id = ?", current_user.employer.id], :per_page => 10, :page => params[:page], :order => 'created_at DESC'
    
  end

  # Public view of profile
  def public
    @employer = Employer.find_by_id(params[:id])
    unless @employer.nil?
      @title = @employer.company_name + " Company Profile"

    end
    
  end

  def edit
    @employer = Employer.find(current_user.employer.id)
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(params[:id])
    
    unless @user.nil?
      if @user.update_attributes(params[:user])
        flash[:notice] = "Profile has been successfully updated."
        redirect_to(:controller => "employers")
      else
        @employer = @user.employer
        render :action => "edit"
      end
    end
    
  end

  def upload_logo
    @title = "Upload Company Logo"
    @employer = Employer.find_by_user_id(current_user.id)
    @logo = EmployerLogo.new 
    
    if request.post?
        @employer.employer_logo = EmployerLogo.create(params[:employer_logo])
    end

  end

  def delete_logo
    employer = Employer.find_by_user_id(current_user.id)
    employer.employer_logo.destroy unless employer.employer_logo.nil?
    redirect_to :controller => "employers", :action => "upload_logo"
  end

end





