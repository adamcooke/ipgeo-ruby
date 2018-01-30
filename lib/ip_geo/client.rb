require 'net/https'
require 'json'
require 'ip_geo/result'
require 'timeout'

module IPGeo
  class Client

    def initialize(hostname, options = {})
      @hostname = hostname
      @options = options
    end

    def lookup(ip)
      Timeout.timeout(@options[:timeout] || 2) do
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
    rescue Exception, Timeout::Error => e
      STDERR.puts "Error during IP lookup of #{ip} with #{@hostname}: #{e.class} (#{e.message})"
      false
    end

  end
end
