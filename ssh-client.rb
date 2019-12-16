#!/usr/bin/env ruby
require 'rubygems'
require 'net/ssh'
 
puts "Enter server ip: "
HOST = gets.chomp()
puts "Enter user: "
USER = gets.chomp()
puts "Enter password: "
PASS = gets.chomp()
system("clear")
puts "You are connecting to #{HOST}"
Net::SSH.start( HOST, USER, :password => PASS ) do|ssh|
usr = ssh.exec!("whoami")
system("clear")
puts "You are #{usr} on #{HOST}"
loop do
    print "$ "
    command = gets.chomp()
    if command == "exit"
        brake
    elsif
        result = ssh.exec!(command)
        puts result
        puts
    end
end
end
