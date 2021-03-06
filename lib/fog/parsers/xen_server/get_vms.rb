module Fog
  module Parsers
    module XenServer
      class GetVms < Fog::Parsers::XenServer::Base
        def reset
          @response = []
        end

        def parse( data )
          parser = Fog::Parsers::XenServer::Base.new
          data.each_pair {|reference, vm_hash| @response << parser.parse( vm_hash ).merge(:reference => reference) }
        end
      end
    end
  end
end