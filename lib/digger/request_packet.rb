module Digger
  class RequestPacket < BinData::Record
    endian :big

    string :magic, value: "\xFE\xFD"
    int8 :packet_type_header, initial_value: -> { packet_type }
    int32 :session_id

    def packet_type
      raise NotImplementedError, '#packet_type should be implemented by subclasses'
    end
  end
end
