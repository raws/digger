require 'test_helper'

module Digger
  class HandshakeRequestPacketTest < TestCase
    test 'generating a handshake request without a session ID' do
      expected = "\xFE\xFD\x09\x00\x00\x00\x00".force_encoding('ASCII-8BIT')
      packet = HandshakeRequestPacket.new
      assert_equal expected, packet.to_binary_s
    end

    test 'generating a handshake request with a session ID' do
      expected = "\xFE\xFD\x09\x00\x00\x00\x01".force_encoding('ASCII-8BIT')
      packet = HandshakeRequestPacket.new(session_id: 1)
      assert_equal expected, packet.to_binary_s
    end
  end
end
