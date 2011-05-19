class JobsController < ApplicationController
  
  before_filter :login_required, :except => [:index, :show]
  before_filter :is_employer_account, :except => [:index, :show]
  before_filter :get_employer_account, :except => [:index, :show]

  # 
  # The main Job Listings Page
  #
  def index

    category = "Dental"

    # main job finder query

    if params[:commit] == "Search"
      @jobs = Job.find_jobs(params[:job_title], params[:profession], params[:location]).paginate :per_page => 20, :page => params[:page], :order => 'jobs.created_at DESC'
    else
      @jobs = Job.paginate :per_page => 20, :page => params[:page], :order => 'created_at DESC'
    end
	    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def employer_index
    @title = "Your Job Listings"
    @jobs = Job.paginate :conditions => ["employer_id = ?", current_user.employer.id], :per_page => 20, :page => params[:page], :order => 'created_at DESC'
  end


  # GET /jobs/1
  # GET /jobs/1.xml
  def show
    @job = Job.find(params[:id])

    # Grab users resumes if they are a job seeker that is logged in
    # so they can be used in the modal dialog partial
    if logged_in? && current_user.account_type == "seeker"
      @resumes = Resume.find_all_by_seeker_id(current_user.seeker.id)
    end
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job }
    end
  end

  # GET /jobs/new
  # GET /jobs/new.xml
  def new
    @job = Job.new
    @job.build_address
    @job.build_profession
		
    respond_to do |format|
      format.html # new.html.erb
      format.js { }
      format.xml  { render :xml => @job }
    end
  end

  # GET /jobs/1/edit
  def edit
    @job = Job.find(params[:id])
  end

  # POST /jobs
  # POST /jobs.xml
  def create
    @job = Job.new(params[:job])
    @job.employer_id = current_user.employer.id
		
    @job.address.city = "Other" if @job.address.state == "Please Select"

    respond_to do |format|
      if @job.save
        flash[:notice] = 'Job was successfully created.'
        format.html {redirect_to '/profile'}
        # Bypass payment for now
        # format.html { redirect_to :controller => 'payments', :id => @job.id }
      else
        flash[:error] = 'There was a problem creating the Job Listing'
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /jobs/1
  # PUT /jobs/1.xml
  def update
    @job = Job.find(params[:id])

    respond_to do |format|
      if @job.update_attributes(params[:job])
        flash[:notice] = 'Job listing was successfully updated.'
        format.html { redirect_to('/profile') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.xml
  def destroy
    @job = Job.find(params[:id])
    @job.destroy

    respond_to do |format|
      format.html { redirect_to(jobs_url) }
      format.xml  { head :ok }
    end
  end

  protected

  def get_employer_account
    @employer = current_user.employer    
  end
end
