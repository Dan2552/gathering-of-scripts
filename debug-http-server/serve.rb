#!/usr/bin/env ruby

require 'pry'
require 'sinatra'

set :bind, '0.0.0.0'

helpers do
  def request_headers
    env.inject({}){|acc, (k,v)| acc[$1.downcase] = v if k =~ /^http_(.*)/i; acc}
  end

  def request_body
    request.body.string
  end

  def endpoint
    "#{env["REQUEST_METHOD"]} #{request.url}"
  end

  def debugger
    puts "=== endpoint"
    puts endpoint
    puts "=== headers"
    puts request_headers
    puts "=== body"
    puts request_body
    binding.pry
  end
end

get '/*' do
  debugger
end

post '/*' do
  debugger
end

patch '/*' do
  debugger
end

put '/*' do
  debugger
end

delete '/*' do
  debugger
end
