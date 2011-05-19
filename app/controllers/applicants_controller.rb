class ApplicantsController < ApplicationController
  before_filter :login_required
  before_filter :is_employer_account
  before_filter :get_employer_account
  
  
  # GET /applicants
  # GET /applicants.xml
  def index
    #@applicants = Applicant.paginate(:per_page => 10, :page => params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @applicants }
    end
  end

  # GET /applicants/1
  # GET /applicants/1.xml
  def show
    
    # security check
    @job = Job.find(params[:id], :conditions => ["employer_id = ?", current_user.employer.id])
    (@job.employer_id == current_user.employer.id).to_console
    if @job.employer_id == current_user.employer.id
      @applicants = Applicant.paginate(:conditions => ["job_id = ?", @job.id], :per_page => 10, :page => params[:page])
    
    else
      render :text => "You do not own that listing"
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @applicant }
    end
  end
  
  def applicant_message
    @title = "Applicant Message"
    @applicant = Applicant.find(params[:id])
    
    #security
    @job = Job.find(@applicant.job_id)
    unless (@job.employer_id == current_user.employer.id)
      render :text => "Permission denied. Actions have been logged."
      return
    else
      render :layout => "blank"
    end
    
  end

  # GET /applicants/new
  # GET /applicants/new.xml
  # def new
  #    @applicant = Applicant.new
  # 
  #    respond_to do |format|
  #      format.html # new.html.erb
  #      format.xml  { render :xml => @applicant }
  #    end
  #  end

  # GET /applicants/1/edit
  # def edit
  #   @applicant = Applicant.find(params[:id])
  # end

  # POST /applicants
  # POST /applicants.xml
  # def create
  #     @applicant = Applicant.new(params[:applicant])
  # 
  #     respond_to do |format|
  #       if @applicant.save
  #         flash[:notice] = 'Applicant was successfully created.'
  #         format.html { redirect_to(@applicant) }
  #         format.xml  { render :xml => @applicant, :status => :created, :location => @applicant }
  #       else
  #         format.html { render :action => "new" }
  #         format.xml  { render :xml => @applicant.errors, :status => :unprocessable_entity }
  #       end
  #     end
  #   end

  # PUT /applicants/1
  # PUT /applicants/1.xml
  # def update
  #    @applicant = Applicant.find(params[:id])
  # 
  #    respond_to do |format|
  #      if @applicant.update_attributes(params[:applicant])
  #        flash[:notice] = 'Applicant was successfully updated.'
  #        format.html { redirect_to(@applicant) }
  #        format.xml  { head :ok }
  #      else
  #        format.html { render :action => "edit" }
  #        format.xml  { render :xml => @applicant.errors, :status => :unprocessable_entity }
  #      end
  #    end
  #  end

  # DELETE /applicants/1
  # DELETE /applicants/1.xml
  def destroy
    @applicant = Applicant.find(params[:id])
    
    # security
    job = Job.find(@applicant.job_id, :select => "id, employer_id")
    if current_user.employer.id == job.employer_id
      flash[:notice] = "The applicant has been deleted"
      @applicant.destroy
    else
      render :text => "You do not own this applicant"
      return
    end
    
    respond_to do |format|
      format.html { redirect_to(applicant_path(job.id)) }
      format.xml  { head :ok }
    end
  end
  
  protected
  
  def get_employer_account
    @employer = current_user.employer    
  end
end
