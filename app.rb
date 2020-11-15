require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @square = (params[:number].to_i**2).to_s
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    answer = ''
    params[:number].to_i.times do 
      answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
  
    answer = 'Unable to perform this operation'

    if params[:operation] == 'add'
      answer = (number1 + number2).to_s
    elsif params[:operation] == 'subtract'
      answer = (number1 - number2).to_s
    elsif params[:operation] == 'multiply'
      answer = (number1 * number2).to_s
    else params[:operation] == 'divide'
      answer = (number1 / number2).to_s
    end
  end
end