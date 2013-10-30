module Digger
  class HandshakeResponsePacket < ResponsePacket
    stringz :unpacked_token

    def packed_token
      @packed_token ||= Array(unpacked_token.to_i).pack('N')
    end
  end
end
