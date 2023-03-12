Rails.application.routes.draw do

    root to: 'citizens#index'

    resources :citizens, path: 'municipe', only: %i[index new create]
    get 'citizens_cards', to: 'citizens#cards'
    get 'address/:id', to: 'citizens#address'

end
