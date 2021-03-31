require "sinatra"
require "sinatra/reloader" if development?
require "user"
require "bike1"

get "/calculate" do
  erb :form
end

post "/result" do
  hr = params[:hours]
  ms = params[:mins]
  usingtime = hr * 60 + ms

  if params[:member] == true
    user = User.new(true)
    fee = bike.time(usingtime)
  else
    params[:member] == false
    user = User.new(false)
    fee = bike.times(usingtime)
  end

  erb :result, locals:{result:fee}
end