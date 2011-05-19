class LogosController < ApplicationController
  
  before_filter :login_required
  before_filter :is_employer_account
  before_filter :set_employer_account

  # GET /logos/new
  def new
    @logo = Logo.find_by_employer_id(@employer.id)

    if @logo.nil?
      @logo = Logo.new
    end

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # POST /logos
  def create
    @logo = Logo.new(params[:logo])
    @logo.employer_id = current_user.employer.id

    respond_to do |format|
      if @logo.save
        flash[:notice] = 'Logo was successfully saved.'
        format.html { redirect_to new_logo_path }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
    @logo = Logo.find_by_employer_id(@employer.id)      
    unless @logo.nil?
      @logo.update_attributes(params[:logo])
      flash[:notice] = "Logo has been updated successfully."
      redirect_to '/employers#logo-tab'
    end
  end
  

  # DELETE /logos/1
  def destroy
    @logo = Logo.find_by_employer_id(@employer.id)      

    unless @logo.nil? 
      @logo.destroy
    end

    respond_to do |format|
      format.html {
        flash[:notice] = "Logo has been destroyed"
        redirect_to(new_logo_path) }
      format.js {}
    end
  end

  protected

  def set_employer_account
    @employer = Employer.find_by_user_id(current_user.id)
  end

end
