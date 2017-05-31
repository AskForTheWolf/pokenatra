require 'sinatra'
require 'sinatra/reloader'
require 'active_record'
# Load the file to connect to the DB
require_relative 'db/connection'

# Load models
require_relative 'models/pokemon'
require_relative 'models/trainer'

get '/pokemon' do
  @pokemon = pokemon.all
  erb :"pokemon/index"
end

post '/pokemon' do
  @pokemon = Pokemon.create(name: params[:name], type: params[:type])
  redirect "/pokemon/#{@pokemon.id}"
end


#basically tried to apply the same logic and structure as the tunr_db example
#But I could not get it running before we had to do outcomes.
