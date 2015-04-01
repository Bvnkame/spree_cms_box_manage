Spree::Core::Engine.routes.draw do
  # Add your extension routes here
  namespace :admin do
    resources :boxes do
      resources :imagecovers do
        collection do
          post :update_positions
        end
      end
    end

    resources :experts do
      resources :imageavatars do
      end
    end
  end
end
