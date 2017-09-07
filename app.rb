#!/usr/bin/env ruby

# Application
class App < Sinatra::Base
    
    # To handle coffee script
    get "/js/*.js" do
        coffee "coffee/#{params[:splat].first}".to_sym
    end
    
    # To handle sass
    get '/css/*.css' do
        sass "sass/#{params[:splat].first}".to_sym
    end
    
    # Route Handlers
    get '/' do
        slim :"slim/index", :layout => :"slim/layout"
    end

    # 404 Error
    not_found do
      status 404
      slim :"slim/404"
    end

end
