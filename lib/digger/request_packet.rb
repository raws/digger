module Digger
  class RequestPacket < BinData::Record
    endian :big

    string :magic, value: "\xFE\xFD"
    int8 :type, initial_value: -> { packet_type }
    int32 :session_id

    def packet_type
      0
    end
  end
end
