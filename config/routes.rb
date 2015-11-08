Rails.application.routes.draw do
    # resources :mac_addresses, except: [:new, :edit]
    resources :vlans, except: [:new, :edit]
    resources :user_groups, except: [:new, :edit]
    resources :mac_addresses, except: [:new, :edit] do
      collection do
        get 'search'
      end
    end

    root :to => 'application#handle_root_request'
    match "*path" => "application#handle_404", via: :all
end
