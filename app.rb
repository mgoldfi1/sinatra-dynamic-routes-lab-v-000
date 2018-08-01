require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/square/:number' do
    @num = params[:number]
    "#{@num.to_i**2}"
  end

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    binding.pry
    @num.to_i.times do
     "" << @phrase
    end
  end
end
