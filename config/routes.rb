Rails.application.routes.draw do
  
  devise_for :users
  root to: 'static_pages#home'

  get 'help' =>   'static_pages#help'
  get 'about' =>  'static_pages#about'

  get 'login' =>  'devise/sessions#new'
  post 'login' =>  'devise/sessions#create'
  get 'signout', to: 'devise/sessions#destroy', as: 'signout'

  get 'signup'  => 'devise/registrations#new'

  resources :notes

  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  

#                   Prefix Verb   URI Pattern                        Controller#Action
#         new_user_session GET    /users/sign_in(.:format)           devise/sessions#new
#             user_session POST   /users/sign_in(.:format)           devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)          devise/sessions#destroy
#            user_password POST   /users/password(.:format)          devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)      devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)     devise/passwords#edit
#                          PATCH  /users/password(.:format)          devise/passwords#update
#                          PUT    /users/password(.:format)          devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)            devise/registrations#cancel
#        user_registration POST   /users(.:format)                   devise/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)           devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)              devise/registrations#edit
#                          PATCH  /users(.:format)                   devise/registrations#update
#                          PUT    /users(.:format)                   devise/registrations#update
#                          DELETE /users(.:format)                   devise/registrations#destroy
#                     root GET    /                                  static_pages#home
#                     help GET    /help(.:format)                    static_pages#help
#                    about GET    /about(.:format)                   static_pages#about
#                    login GET    /login(.:format)                   sessions#new
#                          GET    /login(.:format)                   sessions#create
#                  signout GET    /signout(.:format)                 sessions#destroy
#                   signup GET    /signup(.:format)                  users#new
#                    notes GET    /notes(.:format)                   notes#index
#                          POST   /notes(.:format)                   notes#create
#                 new_note GET    /notes/new(.:format)               notes#new
#                edit_note GET    /notes/:id/edit(.:format)          notes#edit
#                     note GET    /notes/:id(.:format)               notes#show
#                          PATCH  /notes/:id(.:format)               notes#update
#                          PUT    /notes/:id(.:format)               notes#update
#                          DELETE /notes/:id(.:format)               notes#destroy
#                          GET    /auth/:provider/callback(.:format) sessions#create
#             auth_failure GET    /auth/failure(.:format)            redirect(301, /)

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
