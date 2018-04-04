# Rails.application.routes.draw do
  # get 'reviews/new'

#   resources :restaurants
#     collection do
#       get 'top', to: "restaurants#top"

#     end
#   root to: "restaurants#index"
#   end
# end


Rails.application.routes.draw do
  get 'reviews/new'

  resources :restaurants do
    collection do                       # collection => no restaurant id in URL
      get 'top', to: "restaurants#top"  # RestaurantsController#top
      get 'low', to: "restaurants#low"
    end

    member do                             # member => restaurant id in URL
      get 'chef', to: "restaurants#chef"
    end

    resources :reviews, only: [:new, :create]
    # don't need to display /restaurants/:restaurant_id/reviews/:id(.:format) on a separate page
    # restaurants/42/reviews/new
    # page to create a new review only for restaurant 42


  end

  get 'restaurants/top', to: "restaurants#top"
  # preserve and understand the back-end logic

  root to: "restaurants#index"
end
