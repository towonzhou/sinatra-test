# -*- encoding: UTF-8 -*-
##############################################################
# File Name: ab_like.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 二  7/15 17:32:10 2014
##############################################################

require 'rubygems'
require "optparse"
require 'eventmachine'
require "em-http-request"

opts = {}
OptionParser.new do |o|
  o.banner = %Q~Usage: ruby ab_like.rb [options]
    eg:  ruby ab_like.rb -n 1 -u http:www.baidu.com
  ~

  o.on("-n","--requests ", Integer, "Number of requests to perform") do |v|
    opts[:req_num] = v
  end

  o.on("-u","--uri ",String,"the request uri") do |v|
    opts[:uri] = v
  end
end.parse!

puts opts

success_count = 0
faild_count = 0
EM.run {
  multi = EventMachine::MultiRequest.new
  connect_options = {
    connect_timeout: 1,
    inactivity_timeout: 1
  }

  opts[:req_num].times do |idx|
    http = EM::HttpRequest.new(opts[:uri], connect_options).get
    http.callback {
      p "success::#{Thread.object_id}"
      success_count += 1
    }
    http.errback{
      p "faild::#{Thread.object_id}"
      faild_count += 1
    }
    multi.add idx, http
  end

  multi.callback  do
    #p multi.responses[:callback].size
    #p multi.responses[:errback].size
    EventMachine.stop
  end
}

puts "faild_count::#{faild_count}"
puts "success_count::#{success_count}"
