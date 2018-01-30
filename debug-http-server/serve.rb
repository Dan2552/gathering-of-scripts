#!/usr/bin/env ruby

require 'pry'
require 'sinatra'

set :bind, '0.0.0.0'

helpers do
  def request_headers
    env.inject({}){|acc, (k,v)| acc[$1.downcase] = v if k =~ /^http_(.*)/i; acc}
  end
end

get '/*' do
  binding.pry
end

post '/*' do
  binding.pry
end

patch '/*' do
  binding.pry
end

delete '/*' do
  binding.pry
end
