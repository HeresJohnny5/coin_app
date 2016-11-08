require 'sinatra'
require_relative 'coin_functions.rb'

enable :sessions

get '/' do
	erb :get_name
end

post '/name' do
	session[:user_name] = params[:user_name]
	redirect '/change?user_name=' + session[:user_name]
end

get '/change' do
	erb :get_change, :locals => { :user_name => session[:user_name] }
end

post '/change' do
	session[:user_change] = params[:user_change].to_i
    returned_change = generate_change(session[:user_change])
    erb :result, :locals => { :returned_change => returned_change }
end	