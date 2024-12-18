require 'sinatra'
require 'sinatra/reloader'

get '/' do
  @title = "janken"
  erb :index
end


post '/result' do
  @title = "result"
  @throw = params["throw"].to_sym
  @defeat ={rock: :scissors,scissors: :paper, paper: :rock}
  @computer_throw = @defeat.keys.sample
  erb :result
end
