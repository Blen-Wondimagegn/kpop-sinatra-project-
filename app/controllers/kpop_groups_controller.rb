class KpopGroupsController < ApplicationController
   get '/kpop_groups' do
        redirect_if_not_logged_in
        @groups = KpopGroup.all 
        erb :"kpop_groups/index"
   end

    get '/kpop_groups/new' do 
    redirect_if_not_logged_in
      @users = User.all
      erb :"kpop_groups/new"
   end 
  
   get '/kpop_groups/:id' do
        redirect_if_not_logged_in
        @group = KpopGroup.find_by_id(params[:id])
        erb :"kpop_groups/show"
    end

    post '/kpop_groups' do
       group = current_user.kpop_groups.build(params)
        if group.save
            redirect "/kpop_groups/#{group.id}"
        else
            redirect "kpop_groups/new"

        end
        
    end

    get '/kpop_groups/:id/edit' do
        redirect_if_not_logged_in
        @users = User.all
        @group = KpopGroup.find_by_id(params[:id])
        if @group.user.id == current_user.id
            erb :"kpop_groups/edit"
        else
            redirect "/kpop_groups"
        end
    end

     patch '/kpop_groups/:id' do
        @group = KpopGroup.find_by_id(params[:id])
        params.delete("_method")
        if @group.update(params)
            redirect "/kpop_groups/#{@group.id}"
        else
            redirect "kpop_groups/new"
        end
      end

    delete '/kpop_groups/:id' do
        @group = KpopGroup.find_by_id(params[:id])
        if @group.user.id == current_user.id
           @group.destroy
        end
        redirect "/kpop_groups"
    end
end   
