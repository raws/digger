module Digger
  class IntStringz < BinData::Primitive
    stringz :data

    private

    def get
      data.to_i
    end

    def set(value)
      self.data = value.to_s
    end
  end
end
