require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative('./models/rock_paper_scissors')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/about' do
  erb(:about)
end


get '/rock/scissors' do
  return "Rock wins!"

end

get '/hand1/rock/scissors' do
  rps = RPS.new(params[:hand1], [:hand2])
  @game = rps.rock_wins()
  erb(:result)
end

get '/hand2/rock/paper' do
  rps = RPS.new(params[:hand1], [:hand2])
  @game = rps.paper_wins()
  erb(:result)
end

get '/hand1/scissors/paper' do
  rps = RPS.new(params[:hand1], [:hand2])
  @game = rps.paper_wins()
  erb(:result)
end
