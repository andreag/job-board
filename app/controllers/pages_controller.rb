class PagesController < ApplicationController

  # Homepage
  def index
    @title = "Home"
    @categories = Profession.find :all, :order => "profession"

  end

  def faq
    @title = "FAQ"
  end
  
  def about
    @title = "About us"
  end
 
  def contact
    @title = "Contact us"
  end

  def news
    @title = "News"
  end

  def professions
    @title = "Professions"    
    @categories = Profession.find :all, :order => "profession"
  end

  # displayed when user tries to do something their
  # account type does not allow
  def need_employer_account
    @title = "Create an Employer Account"
  end
  def need_seeker_account
    @title = "Create a Job Seeker Account"
  end
  

  # This method acts as a switching model
  # Based on the type of account, will redirect to proper place
  def profile
    if logged_in?
      if current_user.account_type == "seeker"
        redirect_to :controller => 'seekers'
        return
      elsif current_user.account_type == "employer"
        redirect_to :controller => 'employers'
        return
      end
    end    
  end

end
