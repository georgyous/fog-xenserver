module Fog
  module Compute
    class XenServer
      module Models
        class Vmpp < Fog::Model
          # API Reference here:
          # http://docs.vmd.citrix.com/XenServer/6.2.0/1.0/en_gb/api/?c=VMPP

          provider_class :VMPP

          identity :reference

          attribute :alarm_config
          attribute :archive_frequency
          attribute :archive_last_run_time
          attribute :archive_schedule
          attribute :archive_target_config
          attribute :archive_target_type
          attribute :backup_frequency
          attribute :backup_last_run_time
          attribute :backup_retention_value
          attribute :backup_schedule
          attribute :backup_type
          attribute :description,         :aliases => :name_description
          attribute :is_alarm_enabled
          attribute :is_archive_running
          attribute :is_backup_running
          attribute :is_policy_enabled
          attribute :name,                :aliases => :name_label
          attribute :recent_alerts
          attribute :uuid

          has_many  :vms,  :servers,      :aliases => :VMs
        end
      end
    end
  end
end