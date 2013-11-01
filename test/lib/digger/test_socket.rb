module Digger
  class TestSocket
    def connect(host, port)
      # no-op
    end

    def recvfrom(max_length)
      # no-op
    end

    def send(data, flags)
      sent_data << data
    end

    def sent_data
      @sent_data ||= ''
    end
  end
end
