require 'test_helper'

module Digger
  class IntStringzTest < TestCase
    test 'the Ruby representation' do
      io = "20\0".force_encoding('ASCII-8BIT')
      int_stringz = IntStringz.read(io)
      assert_equal 20, int_stringz
    end

    test 'the binary representation' do
      expected = "20\0".force_encoding('ASCII-8BIT')
      int_stringz = IntStringz.new(initial_value: 20)
      assert_equal expected, int_stringz.to_binary_s
    end
  end
end
