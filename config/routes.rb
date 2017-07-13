Rails.application.routes.draw do
  root to: "cocktails#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [ :index, :show, :new, :create ] do
    resources :doses, only: [ :new, :create, :destroy ]
  end
end


# A user can see the list of all cocktails
# GET "cocktails"
# A user can see the details of a given cocktail, with the ingredient list
# GET "cocktails/42"
# A user can create a new cocktail.
# GET "cocktails/new"
# POST "cocktails"
# A user can add a new dose (ingredient/description pair) on an existing cocktail.
# GET "cocktails/42/doses/new"
# POST "cocktails/42/doses"
# A user can delete a dose on an existing cocktail
# DELETE "doses/25"
# And now think. Do we need an IngredientsController?
