module RestClient

  # A Response from RestClient, you can access the response body, the code or the headers.
  #
  module Response

    include AbstractResponse

    attr_accessor :args, :net_http_res

    attr_writer :body

    def body
      self
    end

    def self.create(body, net_http_res, args)
      result = body || ''
      result.extend Response
      result.net_http_res = net_http_res
      result.args = args
      result
    end

  end
end
