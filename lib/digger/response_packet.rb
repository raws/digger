module Digger
  class ResponsePacket < BinData::Record
    endian :big

    int8 :type, initial_value: -> { packet_type }
    int32 :session_id

    def packet_type
      0
    end
  end
end
