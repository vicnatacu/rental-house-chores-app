Rails.application.routes.draw do
  devise_for :installs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'chores#index'
  get "chore/new", to: "chore#new", as: "new_item"
  post "chore/create", to: "chore#create", as: "items"
  get "chore/:id/edit", to: "chore#edit", as: "item_edit"
  patch "chore/:id", to: "chore#update", as: "item"
  delete "chore/:id", to: "chore#destroy", as: "item_delete"
end
