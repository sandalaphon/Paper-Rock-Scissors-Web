require('sinatra')
require('sinatra/contrib/all')
require('pry')
require('./models/rock_paper_scissors.rb')
require('json')

# get '/add/:num1/:num2' do
# calculator = Calculator.new(params[:num1].to_i,params[:num2].to_i)
# @calculation=calculator.add
# erb( :results )
# end

# get '/multiply/:num1/:num2' do
#   calculator = Calculator.new(params[:num1].to_i,params[:num2].to_i)
#   return calculator.multiply.to_s
#   end

  get '/game/:hand1/:hand2' do
    rps_game = RockPaperScissors.new(params[:hand1],params[:hand2])
    @result = rps_game.game()
    erb(:hands)
    end

  #   get '/divide/:num1/:num2' do
  #     calculator = Calculator.new(params[:num1].to_i,params[:num2].to_i)
  #     return calculator.divide.to_s
  #     end

  #     get '/all/:num1/:num2' do
  #       calculator = Calculator.new( params[:num1].to_f, params[:num2].to_f)

  #       results = {
  #           add: calculator.add(),
  #           subtract: calculator.subtract(),
  #           multiply: calculator.multiply(),
  #           divide: calculator.divide()
  #       }

  #       return results.to_json
  #     end
  
  get '/' do
    erb(:home)
  end

  get '/game' do
    erb(:game)
  end