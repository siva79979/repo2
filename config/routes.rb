Rails.application.routes.draw do
  get '/students/show/:id',     :to => 'students#show', :as => "student_books"
  get '/students/index', :to => 'students#index', :as => "students"
  get '/students/new',   :to => "students#new", :as => "new_student"
  get '/students/edit/:id', :to => "students#edit", :as => "edit_student"
  patch '/students/update/:id', :to => "students#update", :as =>"update_student"
  post '/students/create', :to => "students#create", :as => "create_student"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
