Rails.application.routes.draw do
  resources :recruitment_phases
  resources :cohorts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/tree_data/:cohort_id/:recruitment_phase_id', to: 'recruitment_phases#tree_data'
  # Defines the root path route ("/")
  root "cohorts#index"
end
