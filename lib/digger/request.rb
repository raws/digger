module Digger
  class Request
    def initialize(host, port)
      @host = host
      @port = port
    end

    private

    def bytes_to_read
      raise 'subclasses of Digger::Request must implement #bytes_to_read'
    end

    def connect_to_server
      socket.connect(@host, @port)
    end

    def receive_response
      @response, _ = socket.recvfrom(bytes_to_read)
    end

    def request
      raise 'subclasses of Digger::Request must implement #request'
    end

    def response
      if @response
        @response
      else
        connect_to_server
        send_request
        receive_response
      end
    end

    def send_request
      socket.send(request, 0)
    end

    def socket
      @socket ||= UDPSocket.new
    end
  end
end
