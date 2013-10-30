require 'test_helper'

module Digger
  class BasicStatResponsePacketTest < TestCase
    test 'parsing a basic stat response packet' do
      io = "\x00\x00\x00\x00\x01\x41\x20\x4D\x69\x6E\x65\x63\x72\x61\x66\x74\x20\x53\x65\x72\x76" +
           "\x65\x72\x00\x53\x4D\x50\x00\x77\x6F\x72\x6C\x64\x00\x32\x00\x32\x30\x00\xDD\x63\x31" +
           "\x32\x37\x2E\x30\x2E\x30\x2E\x31\x00".force_encoding('ASCII-8BIT')
      packet = BasicStatResponsePacket.read(io)

      assert_equal 'SMP', packet.game_type
      assert_equal '127.0.0.1', packet.host
      assert_equal 20, packet.max_player_count
      assert_equal 'A Minecraft Server', packet.motd
      assert_equal 25565, packet.port
      assert_equal 2, packet.player_count
      assert_equal 'world', packet.world
    end
  end
end
