Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root "dinosaurs#index"
resources :dinosaurs
end
=begin
 code above is *the same* as this:

  root "dinosaurs#index"
  get "dinosaurs" => "dinosaurs#index"
  get "dinosaurs/new" => "dinosaurs#new", as: :new_dinosaur #This new routes must be placed before the "show" route, or it will match first.
  get "dinosaurs/:id" => "dinosaurs#show", as: :dinosaur #naming your route. now Rails knows about dinosaur_path
  post "dinosaurs" => "dinosaurs#create"
  get "dinosaurs/:id/edit" => "dinosaurs#edit", as: :edit_dinosaur
  patch "dinosaurs/:id" => "dinosaurs#update"
  delete "dinosaurs/:id" => "dinosaurs#destroy"

=end
