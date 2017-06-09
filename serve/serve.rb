#!/usr/bin/env ruby

require 'pry'
require 'sinatra'

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
