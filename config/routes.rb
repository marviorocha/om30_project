Rails.application.routes.draw do

    root to: 'citizens#index'

    resources :citizens, path: 'municipe', only: %i[index new create], defaults: { format: :turbo_stream }


end
