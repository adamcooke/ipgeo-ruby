require 'net/https'
require 'json'
require 'ip_geo/result'

module IPGeo
  class Client

    def initialize(hostname, options = {})
      @hostname = hostname
      @options = options
    end

    def lookup(ip)
      Net::HTTP.start(@hostname, @options[:port] || (@options[:ssl] == false ? 80 : 443), :use_ssl => @options[:ssl] != false) do |http|
        request = Net::HTTP::Get.new("/#{ip}")
        response = http.request(request)
        if response.is_a?(Net::HTTPOK)
          Result.new(JSON.parse(response.body))
        else
          false
        end
      end
    end

  end
end
