class RegistrationsController < ApplicationController

    get '/registrations/signup' do
      erb :'/registrations/signup'
    end
  
    post '/registrations' do 
      @user = User.new(name: params["name"], email: params["email"], password: params["password"])
      @user.save
      session[:user_id] = @user.id
    end
  end