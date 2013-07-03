Spree::Core::Engine.routes.draw do
  resources :form_contacts,
    :controller => 'contact_form/contacts',
    :only       => [:new, :create]
  match 'contact' => 'contact_form/contacts#new', :as => :contact_form
end
