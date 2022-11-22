Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update]
  #incase the likes are client based
  patch "/birds/:id/like", to: "birds#increment_likes"


end
