class UsersController < ApplicationController
    get '/users/signup' do
        erb :"users/signup"
    end

    post '/users' do
        @user = User.new(params)
        if @user && @user.save
            session[:user_id] = @user.id
            redirect "/kpop_groups"
        else
            erb :"users/signup"
        end
    end
end 