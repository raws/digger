module Digger
  class ResponsePacket < BinData::Record
    endian :big

    int8 :packet_type_header, initial_value: -> { packet_type }
    int32 :session_id

    def packet_type
      raise NotImplementedError, '#packet_type should be implemented by subclasses'
    end
  end
end
