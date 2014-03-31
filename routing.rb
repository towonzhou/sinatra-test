# -*- encoding: UTF-8 -*-
##############################################################
# File Name: routing.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 2014年03月31日 星期一 21时05分27秒
##############################################################

require 'rubygems'

# If you're using bundler, you will need to add this
require 'bundler/setup'

require 'sinatra'

get '/get' do
  "That is a get request method, it's #{Time.now} at the server!"
end

post '/post' do
  "That is a post request method, it's #{Time.now} at the server!"
end

put '/put' do
  "That is a put request method, it's #{Time.now} at the server!"
end

delete '/delete' do
  "That is a delete request method, it's #{Time.now} at the server!"
end
