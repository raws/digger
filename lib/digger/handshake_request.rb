module Digger
  class HandshakeRequest < Request
    def initialize(socket, session_id)
      super socket
      @session_id = session_id
    end

    def token
      response.packed_token
    end
  end
end
