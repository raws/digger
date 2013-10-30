module Digger
  class BasicStatResponsePacket < ResponsePacket
    stringz :motd
    stringz :game_type
    stringz :world
    int_stringz :player_count
    int_stringz :max_player_count
    int16le :port
    stringz :host
  end
end
