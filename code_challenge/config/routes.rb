Rails.application.routes.draw do
  root "file_uploads#index"

  resources :file_uploads
  controller :file_uploads do
    post :import 
  end
end
