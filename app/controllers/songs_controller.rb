class SongsController < ApplicationController

    get "/songs" do 
        @song = Song.all
        erb :"songs/index"
    end

    get '/songs/:slug' do
        @song = Song.find {|song| song.slug == params[:slug]}
        erb :'/songs/show'
    end
end




