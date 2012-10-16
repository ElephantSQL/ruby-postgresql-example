require 'sinatra'
require './models'

configure do
end

get '/' do
  @todos = Todo.all
  haml :index
end

post '/' do
  Todo.create title: params[:title]
  redirect '/'
end

post '/:id/delete' do |id|
  Todo[id].delete
  redirect '/'
end
