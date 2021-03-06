module Fog
  module Compute
    class XenServer
      module Models
        class Pif < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=PIF

          provider_class :PIF

          identity :reference

          attribute :disallow_unplug
          attribute :currently_attached
          attribute :device
          attribute :device_name
          attribute :dns,                         :aliases => :DNS
          attribute :gateway
          attribute :ip,                          :aliases => :IP
          attribute :ip_configuration_mode
          attribute :ipv6,                        :aliases => :IPv6
          attribute :ipv6_configuration_mode
          attribute :ipv6_gateway
          attribute :mac,                         :aliases => :MAC
          attribute :management
          attribute :mtu,                         :aliases => :MTU
          attribute :netmask
          attribute :other_config
          attribute :physical
          attribute :primary_address_type
          attribute :status_code
          attribute :status_detail
          attribute :vlan,                        :aliases => :VLAN
          attribute :uuid

          has_one :bond_master_of,            :bonds
          has_one :bond_slave_of,             :bonds
          has_one :host,                      :hosts
          has_one :metrics,                   :pif_metrics
          has_one :network,                   :networks
          has_one :tunnel_access_pif_of,      :tunnels,     :aliases => :tunnel_access_PIF_of
          has_one :tunnel_transport_pif_of,   :tunnels,     :aliases => :tunnel_transport_PIF_of
          has_one :vlan_master_of,            :vlans,       :aliases => :VLAN_master_of
          has_one :vlan_slave_of,             :vlans,       :aliases => :VLAN_slave_of
        end
      end
    end
  end
end