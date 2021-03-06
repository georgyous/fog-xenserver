module Fog
  module Parsers
    module XenServer
      class GetPools < Fog::Parsers::XenServer::Base
        def reset
          @response = []
        end

        def parse( data )
          parser = Fog::Parsers::XenServer::Base.new
          data.each_pair {|reference, pool_hash| @response << parser.parse( pool_hash ).merge(:reference => reference) }
        end
      end
    end
  end
end