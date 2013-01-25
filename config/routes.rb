MusicChannels::Application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :channels,:only => [:index, :show]
    end
  end
end
