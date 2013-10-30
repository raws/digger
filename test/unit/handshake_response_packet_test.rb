require 'test_helper'

module Digger
  class HandshakeResponsePacketTest < TestCase
    test 'parsing a handshake response packet' do
      expected_packed_token = "\x00\x91\x29\x5B".force_encoding('ASCII-8BIT')
      io = "\x09\x00\x00\x00\x00\x39\x35\x31\x33\x33\x30\x37\x00".force_encoding('ASCII-8BIT')
      packet = HandshakeResponsePacket.read(io)
      assert_equal expected_packed_token, packet.packed_token
    end
  end
end
