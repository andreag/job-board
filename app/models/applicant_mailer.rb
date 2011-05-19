class ApplicantMailer < ActionMailer::Base

   def new_applicant_notification(applicant)
    @recipients  = applicant.job.employer.user.email
    @subject     = '[OntarioHealthJobs.com] - Application Received'
    @from        = "webmaster@ontariohealthjobs.com"
    @sent_on     = Time.now
    @body[:url]  = "http://www.ontariohealthjobs.com/"
    @body[:applicant] = applicant 
    content_type "text/html"
    
  end
  
 
end
