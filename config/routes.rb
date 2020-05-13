Rails.application.routes.draw do
  resources :gardens do # GardensController#...
    resources :plants, only: [:create] # PlantsController#create
  end
  resources :plants, only: [:destroy]
end

# DELETE plants/:id
