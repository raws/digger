module Digger
  class TestCase < Minitest::Test
    def self.test(name, &block)
      define_method "test_#{name}", &block
    end
  end
end
