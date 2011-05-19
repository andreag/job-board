module JobsHelper

  def apply_for_job(job_id)
    if logged_in? 
      if current_user.account_type == "seeker"  
        link_to image_tag('/images/apply-for-job.png', :style => "position: relative; top: 10px; float: right"), {:controller => "seekers", :action => "apply_for_job", :job_id => job_id}, :class => "apply-button"
      end 
    else 
      link_to image_tag('/images/apply-for-job.png', :style => "position: relative; top: 10px; float: right"), :controller => "pages", :action => "need_seeker_account" 
    end 
  end


end
