# -*- encoding: UTF-8 -*-
##############################################################
# File Name: encode.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 日  6/15 22:48:29 2014
##############################################################

require 'rubygems'
require "sinatra"

get "/" do
  response["Content-Type"] = "text/html;charset=gbk"
  a = "1你好"
  b = "我好".encode("gbk")
  return "#{a}#{b}"
end
