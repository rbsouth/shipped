                   Prefix Verb   URI Pattern                                                                       Controller#Action
         new_user_session GET    /users/sign_in(.:format)                                                          devise/sessions#new
             user_session POST   /users/sign_in(.:format)                                                          devise/sessions#create
     destroy_user_session DELETE /users/sign_out(.:format)                                                         devise/sessions#destroy
        new_user_password GET    /users/password/new(.:format)                                                     devise/passwords#new
       edit_user_password GET    /users/password/edit(.:format)                                                    devise/passwords#edit
            user_password PATCH  /users/password(.:format)                                                         devise/passwords#update
                          PUT    /users/password(.:format)                                                         devise/passwords#update
                          POST   /users/password(.:format)                                                         devise/passwords#create
 cancel_user_registration GET    /users/cancel(.:format)                                                           devise/registrations#cancel
    new_user_registration GET    /users/sign_up(.:format)                                                          devise/registrations#new
   edit_user_registration GET    /users/edit(.:format)                                                             devise/registrations#edit
        user_registration PATCH  /users(.:format)                                                                  devise/registrations#update
                          PUT    /users(.:format)                                                                  devise/registrations#update
                          DELETE /users(.:format)                                                                  devise/registrations#destroy
                          POST   /users(.:format)                                                                  devise/registrations#create
                    users GET    /users(.:format)                                                                  users#index
                     user GET    /users/:id(.:format)                                                              users#show
                    boats GET    /boats(.:format)                                                                  boats#index
                          POST   /boats(.:format)                                                                  boats#create
                 new_boat GET    /boats/new(.:format)                                                              boats#new
                edit_boat GET    /boats/:id/edit(.:format)                                                         boats#edit
                     boat GET    /boats/:id(.:format)                                                              boats#show
                          PATCH  /boats/:id(.:format)                                                              boats#update
                          PUT    /boats/:id(.:format)                                                              boats#update
                          DELETE /boats/:id(.:format)                                                              boats#destroy
                     root GET    /                                                                                 boats#index
       rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                        active_storage/blobs#show
     rails_blob_variation GET    /rails/active_storage/variants/:signed_blob_id/:variation_key/*filename(.:format) active_storage/variants#show
       rails_blob_preview GET    /rails/active_storage/previews/:signed_blob_id/:variation_key/*filename(.:format) active_storage/previews#show
       rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                       active_storage/disk#show
update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                               active_storage/disk#update
     rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                    active_storage/direct_uploads#create
