Rails.application.routes.draw do

  devise_for :users, :path=>'',
                      :path_names=>{:sign_in=>'login', :sign_out=>'logout', :edit=>'profile'},
                      :controllers=>{:registrations=>'registrations'} #cette ligne permet d'enlever la protection par mot de pass de la modification du profil
  root 'pages#home'

  resources :users, only: [:show]

end
