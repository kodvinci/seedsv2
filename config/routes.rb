MicroLending::Application.routes.draw do

    devise_for :users 
    
    namespace :api do
        namespace :v1 do
            #devise_for :users
            resources :tokens, :only=>[:create, :destroy]
        end
    end
   
    #Login users using email and password
    #Get user information using authentication token
    devise_scope :user do
        match 'users/login', :controller => "api/v1/tokens", :action => "create";
        match 'users/byAuthToken', :controller => "users", :action => "byAuthToken";
        match 'users/logout', :controller => "api/v1/tokens", :action => "destroy";
   end
   
  match '/users/byEmail', :controller =>"users", :action => "byEmail";
  resources :users, :has_one => :lender
   
  root :to => "home#index"
  resources :home 
 
  match "/event_logs/getEventsById", :controller => "event_logs", :action => "getEventsById";
  resources :event_logs

  match "/decision_logs/getCurrentDecision", :controller => "decision_logs", :action => "getCurrentDecision";
  match "/decision_logs/getAllDecisions", :controller => "decision_logs", :action => "getAllDecisions";
  match "/addStories", :controller =>"story_objects", :action => "index";
  resources :decision_logs

  resources :decision_objects

  resources :story_objects do
    resources :decision_objects
  end

  resources :story_tests do
    resources :decision_tests
  end
    
  match '/paypaltransactions/record', :controller =>"paypaltransactions", :action => "record";
  
  match "/user_decisions/recordDecision", :controller => "user_decisions", :action => "recordDecision";

  match '/stories/getStoryById', :controller => "stories", :action =>"getStoryById";


  #get users by Uid
  match '/users/byUid', :controller => 'users', :action => 'byUid'
  
  #get list of borrowers by category
  match '/borrowers/byCategory', :controller => 'borrowers', :action => 'byCategory';
  
  #get list of friends by ID
  match '/friends/byUid', :controller => 'friends', :action => 'byUid';
  
  #get list of badges by ID
  match '/badge_lists/byUid', :controller =>'badge_lists', :action => 'byUid';
  
  #get transactions by ID
  match '/transactions/byUid', :controller =>'transactions', :action => 'byUid';

  match '/stories/byId', :controller =>'stories', :action => 'getStoryById';
  match '/users/getBorrowersByUid', :controller =>'users', :action => 'getBorrowersByUid';
  
  match '/borrowers/byBuid', :controller =>'borrowers', :action => 'byBuid';
  match '/badges/byBid', :controller =>'badges', :action => 'byBid';

  match '/paypaltransactions/byUid', :controller =>'paypaltransactions', :action => 'byUid';
  match '/paypaltransactions/bypayKey', :controller =>'paypaltransactions', :action => 'bypayKey';

  
  resources :lenders

  resources :borrowers
  
  resources :transactions

  resources :badges

  resources :badge_lists
    
  resources :stories
  
  resources :user_decisions
    
  resources :decisions
    
  resources :paypaltransactions
    
  #get "payment/payment"
   


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'index.html'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
