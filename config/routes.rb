Rails.application.routes.draw do

  get '/' => 'home#index'
  get 'about' => 'home#about'
  get 'contact' => 'home#contact'
  post 'contact' => 'home#send_email'
  get  'contact_success' => 'home#contact_success'
  get 'reproductions' => 'home#reproductions'
  get 'gallery' => 'paintings#index'
  get 'detail/:id' => 'paintings#show'

end
