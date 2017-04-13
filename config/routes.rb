Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
        put "snacks/restore", to: "snacks#restore"
        get "snacks/findByOrigin/:origin", to: "snacks#getByOrigin"

        resources :snacks
    end
  end
end
