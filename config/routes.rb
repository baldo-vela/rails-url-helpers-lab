Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students, only: [:index, :show, :active]
  get '/students/:id/activate', to: 'students#toggle_status', as: 'activate_student'
end
