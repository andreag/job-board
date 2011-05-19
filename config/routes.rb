ActionController::Routing::Routes.draw do |map|

    map.resources :applicants, :member => {:applicant_message => :get}
    map.resources :resumes
    map.resources :logos, :member => {:confirm_destroy => :get}
    map.resources :jobs, :collection => {:employer_index => :get}
    map.resources :users
    map.resource :session

    map.logout '/logout', :controller => 'sessions', :action => 'destroy'
    map.login '/login', :controller => 'sessions', :action => 'new'
    map.register '/register', :controller => 'users', :action => 'create'
    map.signup '/signup', :controller => 'users', :action => 'account_type'
    map.activate '/activate/:activation_code', :controller => 'users', :action => 'activate', :activation_code => nil

    map.profile '/profile', :controller => 'pages', :action => 'profile' 
		map.listings '/listings', :controller => 'jobs'
		
    map.root :controller => "jobs"
    
    map.connect ':controller/:action/:id'
    map.connect ':controller/:action/:id.:format'

end
