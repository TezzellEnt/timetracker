Timetracker::Application.routes.draw do

  #root
  root 'companies#index'

  #resources
  resources :companies
  resources :works
  resources :projects

  #named route
  get 'recentworks/:days' => 'works#index'
  get 'timetrackerproject/:slug' => 'projects#show'
end
