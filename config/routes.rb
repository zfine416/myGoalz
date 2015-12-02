Rails.application.routes.draw do
  # devise_for :users

  root 'welcome#index'

  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }

  authenticate :user do
    resources :goals
  end
end

#                   Prefix Verb   URI Pattern                    Controller#Action
#                     root GET    /                              welcome#index
#         new_user_session GET    /users/sign_in(.:format)       users/sessions#new
#             user_session POST   /users/sign_in(.:format)       users/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      users/sessions#destroy
#            user_password POST   /users/password(.:format)      devise/passwords#create
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#                          PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
# cancel_user_registration GET    /users/cancel(.:format)        users/registrations#cancel
#        user_registration POST   /users(.:format)               users/registrations#create
#    new_user_registration GET    /users/sign_up(.:format)       users/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          users/registrations#edit
#                          PATCH  /users(.:format)               users/registrations#update
#                          PUT    /users(.:format)               users/registrations#update
#                          DELETE /users(.:format)               users/registrations#destroy
#                    goals GET    /goals(.:format)               goals#index
#                          POST   /goals(.:format)               goals#create
#                 new_goal GET    /goals/new(.:format)           goals#new
#                edit_goal GET    /goals/:id/edit(.:format)      goals#edit
#                     goal GET    /goals/:id(.:format)           goals#show
#                          PATCH  /goals/:id(.:format)           goals#update
#                          PUT    /goals/:id(.:format)           goals#update
#                          DELETE /goals/:id(.:format)           goals#destroy