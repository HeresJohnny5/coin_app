require "sinatra"
require_relative "coin_functions.rb"

get "/" do
	erb :get_name
end

post "/name" do
	name = params[:user_name]
	redirect "/change?user_name=" + name
end

get "/change" do
	name = params[:user_name]
	erb :get_change, :locals => {:your_name => name}
end

post "/change" do
	change = params[:user_change]
	change = change.to_i
    returned_change = generate_change(change)
    erb :result, :locals => {:coins => returned_change}
end	