module Fog
  module Compute
    class XenServer
      class Real
        def initialize(options={})
          @host        = options[:xenserver_url]
          @username    = options[:xenserver_username]
          @password    = options[:xenserver_password]
          @defaults    = options[:xenserver_defaults] || {}
          @timeout     = options[:xenserver_timeout] || 30
          @connection  = Fog::XenServer::Connection.new(@host, @timeout)
          @connection.authenticate(@username, @password)
        end

        def reload
          @connection.authenticate(@username, @password)
        end

        def default_template=(name)
          @defaults[:template] = name
        end

        def default_template
          return nil if @defaults[:template].nil?
          (servers.custom_templates + servers.builtin_templates).find do |s|
            (s.name == @defaults[:template]) or (s.uuid == @defaults[:template])
          end
        end

        def default_network
          networks.find { |n| n.name == (@defaults[:network] || "Pool-wide network associated with eth0") }
        end
      end
    end
  end
end