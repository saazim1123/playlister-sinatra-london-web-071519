class ArtistsController < ApplicationController
    get '/artists' do
        @artists = Artist.all
        erb :'/views/artists'
    end

   

end
