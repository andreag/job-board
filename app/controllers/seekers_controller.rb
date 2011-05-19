class SeekersController < ApplicationController

  before_filter :login_required, :except => :public

  def index
    @title = "Welcome Job Seeker"
    @seeker = Seeker.find_by_user_id(current_user.id) 
    
  end

  # The publically viewable profile page for the job seeker
  def public
    @seeker = Seeker.find_by_id(params[:id])
    unless @seeker.nil?
      @title = @seeker.user.name.pluralize + " Profile"
    end
  end

  def edit
    @seeker = Seeker.find(current_user.seeker.id)
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(params[:id])

    unless @user.nil?
      if @user.update_attributes(params[:user])
        flash[:notice] = "Profile has been successfully updated."
        redirect_to(:controller => "seekers")
      else
        @seeker = @user.seeker
        render :action => "edit"
      end
    end
    
  end

  def apply_for_job
    @title = "Apply for Job"  
    @job = Job.find_by_id(params[:job_id])
    @resumes = Resume.find_all_by_seeker_id(current_user.seeker.id) 
  end
  
  def applied
    if request.post?
      @title = "Your application has been sent"      
      @job_id = params[:job_id]
      @resume_id = params[:attachment][:resume]
      @coverletter_id = params[:attachment][:coverletter]
      @message_for_employer = params[:message_for_employer]
      
      applicant = Applicant.new
      applicant.seeker_id = current_user.seeker.id
      applicant.job_id = @job_id
      applicant.save 
   
      if applicant.save
        flash[:notice] = "Your application has been sent."
        # Notify employer by mail that a new application has been sent 
        
        # Attach user message if available
        if @message_for_employer
          applicant.message_for_employer = @message_for_employer
        end
        
        # Documents
        if @resume_id && @resume_id.to_i > 0
          applicant.resumes << Resume.find(@resume_id)
          applicant.save
        end
        
        # Cover Letter
        if @coverletter_id && @coverletter_id.to_i > 0
          applicant.resumes << Resume.find(@coverletter_id)
          applicant.save
        end
        
        flash[:notice] = "Your application has been sent."
        ApplicantMailer.deliver_new_applicant_notification(applicant)
      else
        flash[:error] = "There was an error in sending your application. We have been notified"
      end
      
      redirect_to '/profile'
    end
  end
end
