require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative('./models/rock_paper_scissors')
also_reload('./models/*')


get '/rock/scissors' do
  return "Rock wins!"

end
