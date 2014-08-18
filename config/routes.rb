Blog::Application.routes.draw do
    resources :posts do
        resources :comments
    end

    root  'static_pages#home'
    match '/blog',  to: 'static_pages#blog', via: 'get'
    match '/amazon_web_services_guide',  to: 'static_pages#aws_guide', via: 'get'
    match '/admin', to: 'posts#admin', via:'get'

    match '*path' => redirect('/404'), via: :get
end
