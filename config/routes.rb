UserBase::Application.routes.draw do
  post "/create_user", to: "users#create_user"
  post "/create_mall", to: "malls#create_mall"
  match '*a', to: 'application#render_404', via: [:get, :post, :put, :delete]
end
