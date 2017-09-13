Rails.application.routes.draw do

  root to: "prog_languages#index"
  resources :prog_languages
  resources :error_msgs

end
