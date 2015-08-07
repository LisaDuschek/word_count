require 'sinatra'
require 'sinatra/reloader'
require './lib/word_count'
also_reload('lib/**/*.rb')

get '/' do
  erb(:index)
end

get ('/result') do

    @sentence = params.fetch("sentence")
    @word = params.fetch("word")
    @result = @sentence.word_count(@word)
    erb(:result)
  end
