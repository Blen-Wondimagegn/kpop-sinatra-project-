class KpopGroupsController < ApplicationController
get '/groups' do  
        @kpop_groups = KpopGroup.all 
        erb :"kpop_groups/index"
   end
   get '/groups/new' do 
      @users = User.all
      erb :"kpop_groups/new"
   end 

    get '/groups/:id' do
        # redirect_if_not_logged_in
        @group = KpopGroup.find_by_id(params[:id])
        erb :"kpop_groups/show"
    end
   
    post '/groups' do
        group = KpopGroup.new(params)
        if group.save
            redirect "/kpop_groups/#{group.id}"
        else
            redirect "kpop_groups/new"
        end
    end
    get '/posts/:id/edit' do
        redirect_if_not_logged_in
        @users = User.all
        @post = Post.find_by_id(params[:id])
        if @post.user.id == current_user.id
            erb :"posts/edit"
        else
            redirect "/posts"
        end
    end
end   