require 'test_helper'

module Digger
  class HandshakeRequestTest < TestCase
    test 'a successful request' do
      socket = TestSocket.new
      response = stub(packed_token: 'token')
      request = HandshakeRequest.new(socket, 1)
      request.stubs(:response).returns(response)

      assert_equal 'token', request.token
    end
  end
end
