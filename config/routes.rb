Rails.application.routes.draw do
  devise_for :users,
  path_names: {sign_up: ''}
  
  get 'info_album_view', to: 'operation_controller#info_album_view'
  get 'info_composition_view', to: 'operation_controller#info_composition_view'
  get 'info_storage_view', to: 'operation_controller#info_storage_view'
  get 'composition_lists_report', to: 'operation_controller#composition_lists_report'
  get 'storage_lists_report', to: 'operation_controller#storage_lists_report'
  get 'artist_lists_report', to: 'operation_controller#artist_lists_report'
  get 'info_person_view', to: 'operation_controller#info_person_view'
  get 'info_artist_view', to: 'operation_controller#info_artist_view'
  get 'info_label_view', to: 'operation_controller#info_label_view'
  
  get 'search', to: 'operation_controller#search'
  get 'composition_search', to: 'operation_controller#composition_search'
  get 'album_search', to: 'operation_controller#album_search'
  get 'music_storage_search', to: 'operation_controller#music_storage_search'
  get 'music_storage_search_country', to: 'operation_controller#music_storage_search_country'
  get 'artist_search', to: 'operation_controller#artist_search'
  
#  get 'operation_controller/info_composition_view'
  
    root to: 'operation_controller#search'
    
  resources :person, :artist, :artist_list 
  post '/people' => 'person#create'
  post '/artists' => 'artist#create'
  post '/artist_lists' => 'artist_list#create'
  
  resources :label, :album, :composition
  post '/labels' => 'label#create'
  post '/albums' => 'album#create'
  post '/compositions' => 'composition#create'
  
  resources :composition_list, :music_storage, :storage_list
  post '/composition_lists' => 'composition_list#create'
  post '/music_storages' => 'music_storage#create'
  post '/storage_lists' => 'storage_list#create'
  
  get 'success', to: 'operation_controller#success'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
