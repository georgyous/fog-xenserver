require 'minitest_helper'

describe Fog::Compute::XenServer::Models::Vif do
  let(:vif_class) do
    class Fog::Compute::XenServer::Models::Vif
      def self.read_identity
        instance_variable_get('@identity')
      end
    end
    Fog::Compute::XenServer::Models::Vif
  end

  it 'should associate to a provider class' do
    vif_class.provider_class.must_equal('VIF')
  end

  it 'should have an unique id' do
    vif_class.read_identity.must_equal(:reference)
  end

  it 'should have 22 attributes' do
    vif_class.attributes.must_equal([ :reference,
                                      :allowed_operations,
                                      :current_operations,
                                      :currently_attached,
                                      :device,
                                      :ipv4_allowed,
                                      :ipv6_allowed,
                                      :locking_mode,
                                      :mac,
                                      :mac_autogenerated,
                                      :mtu,
                                      :other_config,
                                      :qos_algorithm_params,
                                      :qos_algorithm_type,
                                      :qos_supported_algorithms,
                                      :runtime_properties,
                                      :status_code,
                                      :status_detail,
                                      :uuid,
                                      :__metrics,
                                      :__network,
                                      :__vm ])
  end

  it 'should have 7 aliases' do
    vif_class.aliases.must_equal({ :MAC => :mac, 
                                   :MAC_autogenerated => :mac_autogenerated, 
                                   :metrics => :__metrics, 
                                   :MTU => :mtu,
                                   :network => :__network,
                                   :VM => :__vm,
                                   :vm => :__vm })
  end
end