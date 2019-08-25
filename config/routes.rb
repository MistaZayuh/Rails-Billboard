Rails.application.routes.draw do

root "billboards#index"

resources :billboards do
  resources :tunes
end

resources :bands do
  resources :tunes
end

end
