class GenresController < ApplicationController
    get '/genres' do
        @genre = Genre.all
        erb :'/genres/index'
    end

    get '/genres/:slug' do
        @genre = Genre.find {|genre| genre.slug == params[:slug]}
        erb :'/genres/show'
    end
end





