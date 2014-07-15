# -*- encoding: UTF-8 -*-
##############################################################
# File Name: amqp_s.rb
# Author: zhouhuan
# mail: towonzhou@gmail.com
# Created Time: 五  5/30 00:02:19 2014
##############################################################

require "rubygems"
require "amqp"

AMQP.start do |conn|
  channel = AMQP::Channel.new(conn)
  exchange = channel.fanout("nba.scores")

  channel.queue("joe").bind(exchange).subscribe do |payload|
    puts "#{payload} => joe"
  end

  #exchange.publish("BOS 101, NYK 89").publish("ORL 85, ALT 88")

  #EventMachine.add_timer(2) do
  #  conn.close { EventMachine.stop }
  #end

end
