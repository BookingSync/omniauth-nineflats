require 'rubygems'
require 'bundler'

Bundler.setup :default, :development, :example
require 'sinatra'
require 'omniauth'
require 'omniauth-nineflats'

use Rack::Session::Cookie

use OmniAuth::Builder do
  provider :nineflats, ENV['NINEFLATS_KEY'], ENV['NINEFLATS_SECRET']
end

get '/' do
  <<-HTML
<ul>
<li><a href='/auth/nineflats'>Sign in with 9Flats</a></li>
</ul>
HTML
end

get '/auth/:provider/callback' do
  content_type 'text/plain'
  request.env['omniauth.auth'].to_hash.inspect
end

get '/auth/failure' do
  content_type 'text/plain'
  params[:message]
end
