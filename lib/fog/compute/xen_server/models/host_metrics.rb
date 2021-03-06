module Fog
  module Compute
    class XenServer
      module Models
        class HostMetrics < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=host_metrics

          provider_class :host_metrics

          identity :reference

          attribute :last_updated
          attribute :live
          attribute :memory_free
          attribute :memory_total
          attribute :other_config
          attribute :uuid

          def initialize(attributes = {})
            super
            self.last_updated = attributes[:last_updated].to_time
          end
        end
      end
    end
  end
end