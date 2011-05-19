class ResumesController < ApplicationController
  before_filter :login_required
  before_filter :is_seeker_account
  before_filter :get_seeker_account

  # GET /resumes
  def index
    @resumes = Resume.find_all_by_seeker_id(current_user.seeker.id)

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /resumes/1
  def show
    @resume = Resume.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /resumes/new
  def new
    @count = Resume.find_all_by_seeker_id(current_user.seeker.id).count

    # Maximum Resume's Allowed set to 5
    if @count >= 5
      flash[:error] = "You have exceeded the maximum resumes allowed on file. Please delete one and try again"
      redirect_to resumes_path
      return
    end

    @resume = Resume.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end


  # POST /resumes
  def create
    @resume = Resume.new(params[:resume])
    @resume.seeker_id = current_user.seeker.id

    respond_to do |format|
      if @resume.save
        flash[:notice] = 'Resume was successfully created.'
        format.html { redirect_to(resumes_path) }
      else
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /resumes/1
  def update
    
    return


    @resume = Resume.find(params[:id])

    respond_to do |format|
      if @resume.update_attributes(params[:resume])
        flash[:notice] = 'Resume was successfully updated.'
        format.html { redirect_to(@resume) }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /resumes/1
  def destroy
    @resume = Resume.find_by_id(params[:id])

    # make sure user owns this resume
    unless @resume.nil?
      unless @resume.seeker_id == current_user.seeker.id 
        flash[:error] = "You do not own this resume."
        redirect_to resumes_path
        return
      end
    end

    @resume.destroy
    flash[:notice] = "Resume has been deleted"
    respond_to do |format|
      format.html { redirect_to(resumes_url) }
    end
  end

  protected

  def get_seeker_account
    @seeker = Seeker.find_by_user_id(current_user.id)
  end

end
