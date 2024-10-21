require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save
    redirect '/'
  end
  
  get '/gossips/:id/' do
    
    erb :show, locals: {gossips_choice: Gossip.find(params['id'].to_i)}
    #puts "Voici le numéro du potin que tu veux : #{params['id']}!"
  end

  get '/gossips/id/edit/' do
    erb :edit 
  end


  post '/gossips/id/edit/' do

  # Appel de la méthode update du modèle
  Gossip.update(id = params['id'], params['update_author'], params['update_content'])

  # Redirection après mise à jour
  redirect "/gossips/#{params['id']}/"
  end



end