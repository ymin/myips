require 'myips/version'
require 'socket'

module Myips
  class << self
    def local_ip
      orig, Socket.do_not_reverse_lookup = Socket.do_not_reverse_lookup, true  # turn off reverse DNS resolution temporarily

      UDPSocket.open do |s|
        s.connect '13.107.21.200', 1 # Using Bing.com ip
        s.addr.last
      end
    ensure
      Socket.do_not_reverse_lookup = orig
    end 

    def public_ip
      require "net/http"
      ip = Net::HTTP.get(URI("https://api.ipify.org"))
    end
  end
end
