# -*- encoding: UTF-8 -*-
##############################################################
# File Name: filter.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 2014年03月31日 星期一 21时37分01秒
##############################################################

require 'rubygems'

# If you're using bundler, you will need to add this
require 'bundler/setup'

require 'sinatra'

before do
  @befor = "beeeeeeefor"
end

get '/' do
  "hello, test the #{@befor} filter, it's #{Time.now} at the server!"
end

