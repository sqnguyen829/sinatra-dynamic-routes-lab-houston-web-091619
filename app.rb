require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name_reverse = params[:name].reverse!
    "#{@name_reverse}"
  end

  get '/square/:number' do
    @square_num = params[:number].to_i * params[:number].to_i
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    counter = params[:number].to_i
    da_phrase = ''
    counter.times do
      da_phrase += params[:phrase]
      counter -= 1
    end
    da_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    symbol = params[:operation]

    if symbol== 'add'
      sum = num1 + num2
      sum.to_s
    elsif symbol == 'subtract'
      sub_num = num1 - num2
      sub_num.to_s
    elsif symbol == 'multiply'
      mult = num1 * num2
      mult.to_s
    elsif symbol == 'divide'
      div = num1 / num2
      div.to_s
    end


  end

end