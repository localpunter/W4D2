require ('sinatra')
require ('sinatra/contrib/all')
require ('pry-byebug')
require_relative('./models/calculator')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/about_us' do
  erb(:about_us)
end

get '/add/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i,
  params[:num2].to_i)
  # return "#{calculator.add()}"
  @calculation = calculator.add()
  erb(:results)
  # erb looks in the views folder
  # which has the 'results.erb' file for :result
  #
  # <%= yield %> in the 'layout.erb' file acts as
  # copy and paste
  #
  # The style.css file is saved in a public folder at the same level
  # as the views folder.
end

get '/subtract/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i,
  params[:num2].to_i)
  # return "#{calculator.subtract()}"
  @calculation = calculator.subtract()
  erb(:results)
end

get '/multiply/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_i,
  params[:num2].to_i)
  # return "#{calculator.multiply()}"
  @calculation = calculator.multiply()
  erb(:results)
end

get '/divide/:num1/:num2' do
  calculator = Calculator.new(params[:num1].to_f,
  params[:num2].to_f)
  # return "#{calculator.divide()}"
  @calculation = calculator.divide()
  erb(:results)
end
