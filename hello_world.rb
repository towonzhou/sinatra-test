# -*- encoding: UTF-8 -*-
##############################################################
# File Name: hello_world.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 2014年03月31日 星期一 20时32分23秒
##############################################################

require 'rubygems'

# If you're using bundler, you will need to add this
require 'bundler/setup'

require 'sinatra'

get '/' do
  "Hello world, it's #{Time.now} at the server!"
end

