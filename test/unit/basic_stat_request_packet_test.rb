require 'test_helper'

module Digger
  class BasicStatRequestPacketTest < TestCase
    test 'generating a basic stat request' do
      magic = "\xFE\xFD"
      type = "\x00"
      session_id = "\x00\x00\x00\x01"
      token = "\x00\x91\x29\x5B"
      expected = (magic + type + session_id + token).force_encoding('ASCII-8BIT')

      packet = BasicStatRequestPacket.new(session_id: 1, token: "\x00\x91\x29\x5B")
      assert_equal expected, packet.to_binary_s
    end
  end
end
