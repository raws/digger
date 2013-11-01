require 'test_helper'

module Digger
  class BasicStatRequestTest < TestCase
    test 'a successful request' do
      socket = TestSocket.new
      request = BasicStatRequest.new(socket, 1, 'token')
      request.stubs(:response).returns(response)

      assert_equal 'SMP', request.game_type
      assert_equal '0.0.0.0', request.host
      assert_equal 20, request.max_player_count
      assert_equal 'A Minecraft Server', request.motd
      assert_equal 25565, request.port
      assert_equal 2, request.player_count
      assert_equal 'world', request.world
    end

    private

    def response
      params = {
        game_type: 'SMP',
        host: '0.0.0.0',
        max_player_count: 20,
        motd: 'A Minecraft Server',
        port: 25565,
        player_count: 2,
        world: 'world'
      }

      BasicStatResponsePacket.new(params)
    end
  end
end
