Rails.application.routes.draw do
  resources :parliaments
  # menu wakil rakyat
  get '/anggota_wakil_rakyat' => 'parliaments#index', as: :anggota_wakil_rakyat

  #info
  resources :information
  get '/kegiatan' =>  'information#index', as: :kegiatan

  # menu komisi
  # resources :comissions
  # get '/komisi_wakil_rakyat' => 'comissions#index', as: :komisi_wakil_rakyat

  # menu fraksi
  # get '/fraksi_wakil_rakyat' => 'fractions#index', as: :fraksi_wakil_rakyat

  # menu tugas_dan_wewenang
  get '/alat_dan_kelengkapan' => 'boards#alat_dan_kelengkapan', as: :alat_dan_kelengkapan
  # get '/panitia_khusus' => 'boards#panitia_khusus', as: :panitia_khusus
  # get '/badan_kehormatan' => 'boards#badan_kehormatan', as: :badan_kehormatan
  #get '/badan_legislasi' => 'boards#badan_legislasi', as: :badan_legislasi
  #get '/badan_anggaran' => 'boards#badan_anggaran', as: :badan_anggaran
  #get '/badan_musyawarah' => 'boards#badan_musyawarah', as: :badan_musyawarah

  # menu profil
  # get '/profil' => 'profiles#profil', as: :profil
  # get '/sejarah' => 'profiles#sejarah', as: :sejarah
  # get '/visi_misi' => 'profiles#visi_misi', as: :visi_misi
  # get '/hak_kewajiban' => 'profiles#hak_kewajiban', as: :hak_kewajiban
  # get '/tugas_wewenang' => 'profiles#tugas_wewenang', as: :tugas_wewenang


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'parliaments#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
