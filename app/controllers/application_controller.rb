# application_controller

require './config/environment'


class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :session_secret, ENV['SESSION_SECRET']
    use Rack::Session::Cookie, :key => 'rack.session',
        :domain => 'http://fis.shegottablog.com:3000',
        :path => '/',
        :expire_after => 2592000,
        :secret => 'random_text',
        :old_secret => 'another_random_text'

  end

  get "/" do

    erb :welcome
  end


end
