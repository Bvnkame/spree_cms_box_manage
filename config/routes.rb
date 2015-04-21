Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :boxes do

      resource :box_expert

      resources :imagecovers do
        collection do
          post :update_positions
        end
      end
    end
  end
end
