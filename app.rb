require 'sinatra'
require 'sinatra/contrib/all' if development?


get '/' do
  "Hello World!"

end

get '/iplayer' do
  "<strong>This isn't BBC!</strong>"
end

get '/roll-die' do
  (1 + rand(6)).to_s
# get is the http method
# get '/roll-die is the route'
# '/roll-die' is the path
end

# get '/name/:first/:last' do
#   return params.to_s
# end


get '/Name/:first/:last' do
  return "Your name is #{params[:first].capitalize} #{params[:last].capitalize}"
end

get '/friends/:number' do
  friends = ["Joey", "Phoebe", "Monica", "Chandler", "Rachel", "Ross"]
  return friends[params[:number].to_i - 1]
  #url 'localhost:4567/friends/5' will return Rachel
end

# get '/pet/:hello' do
#   "Hello pet"
# end
#
# #using the same route '/pet' will only return the first one - Hello pet
#
# get '/pet/:name' do
#   "Hello #{params[:name]}"
# end
