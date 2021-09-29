module Digger
  class BasicStatRequestPacket < RequestPacket
    string :token

    def packet_type
      0
    end
  end
end
