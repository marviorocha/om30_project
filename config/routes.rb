Rails.application.routes.draw do

    root to: 'people#index'

    resources :people, path: 'municipes', only: %i[index update new show create]


end
