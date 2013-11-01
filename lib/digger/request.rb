module Digger
  class Request
    def initialize(socket)
      @socket = socket
    end

    private

    def bytes_to_read
      raise 'subclasses of Digger::Request must implement #bytes_to_read'
    end

    def receive_response
      @response, _ = @socket.recvfrom(bytes_to_read)
    end

    def request
      raise 'subclasses of Digger::Request must implement #request'
    end

    def response
      if @response
        @response
      else
        send_request
        receive_response
      end
    end

    def send_request
      @socket.send(request, 0)
    end
  end
end
