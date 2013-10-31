module Digger
  class BasicStatRequest < Request
    def initialize(host, port, session_id, token)
      super host, port
      @session_id = session_id
      @token = token
    end

    def game_type
      response.game_type
    end

    def host
      response.host
    end

    def max_player_count
      response.max_player_count
    end

    def motd
      response.motd
    end

    def port
      response.port
    end

    def player_count
      response.player_count
    end

    def world
      response.world
    end

    private

    def bytes_to_read
      1460
    end

    def request
      BasicStatRequestPacket.new(session_id: @session_id, token: @token).to_binary_s
    end
  end
end
